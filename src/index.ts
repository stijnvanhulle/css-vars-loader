import webpack from 'webpack';
import { validate } from 'schema-utils';
import { Schema } from 'schema-utils/declarations/validate';

import schema from './options.json';

export const raw = true;

export interface LoaderOptions {
  modifyVars: Record<string, any>;
  file: string;
}

export default function loader(
  this: webpack.LoaderContext<LoaderOptions>,
  contents: string
) {
  this.cacheable();
  const options = this.getOptions(schema as any) || {};
  const callback = this.async();

  validate(schema as Schema, options, {
    name: '@stijnvanhulle/css-vars-loader',
    baseDataPath: 'options',
  });

  try {
    const path = this.resourcePath;
    let newSource = contents;

    if (path === options.file) {
      this.getOptions();
      const cssVariables = Object.keys(options.modifyVars).map((key) => {
        const value = options.modifyVars[key];
        // filter when already css variable
        if (value.includes('var(--')) {
          return;
        }
        return `--${key}: ${value};`;
      });
      if (cssVariables) {
        newSource = `${newSource}
:root {
  ${cssVariables.filter((c) => !!c).join(`
`)}
}`;
      }
    }
    callback(null, newSource);
  } catch (e: any) {
    callback(e);
  }
}

module.exports = loader;
