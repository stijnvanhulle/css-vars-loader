<div align="center">
  <a href="https://github.com/webpack/webpack">
    <img width="200" height="200" src="https://webpack.js.org/assets/icon-square-big.svg">
  </a>
</div>


# @stijnvanhulle/css-vars-loader

${description}

## Getting Started

To begin, you'll need to install `@stijnvanhulle/css-vars-loader`:

```console
$ npm install @stijnvanhulle/css-vars-loader --save-dev
```

<!-- isLoader ? use(this) : delete(isPlugin) -->

Then add the loader to your `webpack` config. For example:

<!-- isPlugin ? use(this) : delete(isLoader) -->

Then add the plugin to your `webpack` config. For example:

**file.ext**

```js
import file from 'file.ext';
```

<!-- isLoader ? use(this) : delete(isPlugin) -->

**webpack.config.js**

```js
module.exports = {
  module: {
    rules: [
      {
        test: /\.ext$/,
        use: [
          {
            loader: `css-vars-loader`,
            options: { ...options },
          },
        ],
      },
    ],
  },
};
```

<!-- isPlugin ? use(this) : delete(isLoader) -->

**webpack.config.js**

```js
module.exports = {
  plugins: [
    new `CssVarsLoader`Plugin(options)
  ]
}
```

And run `webpack` via your preferred method.

## Options

### `[option]`

Type: `[type|other-type]`
Default: `[type|null]`

[ option description ]

<!-- isLoader ? use(this) : delete(isPlugin) -->

**webpack.config.js**

```js
module.exports = {
  module: {
    rules: [
      {
        loader: `css-vars-loader`,
        options: {
          [option]: '',
        },
      },
    ],
  },
};
```

<!-- isPlugin ? use(this) : delete(isLoader) -->

**webpack.config.js**

```js
module.exports = {
  plugins: [
    new `CssVarsLoader`Plugin({
      [option]: ''
    })
  ]
};
```

## Examples

[ example outline text ]

**webpack.config.js**

```js
// Example setup here..
```

**file.ext**

```js
// Source code here...
```

**bundle.js**

```js
// Bundle code here...
```

## Contributing

Please take a moment to read our contributing guidelines if you haven't yet done so.

[CONTRIBUTING](./.github/CONTRIBUTING.md)

## License

[MIT](./LICENSE)

[npm]: https://img.shields.io/npm/v/@stijnvanhulle/css-vars-loader.svg
[npm-url]: https://npmjs.com/package/@stijnvanhulle/css-vars-loader
[node]: https://img.shields.io/node/v/@stijnvanhulle/css-vars-loader.svg
[node-url]: https://nodejs.org
[deps]: https://david-dm.org/webpack-contrib/@stijnvanhulle/css-vars-loader.svg
[deps-url]: https://david-dm.org/webpack-contrib/@stijnvanhulle/css-vars-loader
[tests]: https://dev.azure.com/webpack-contrib/@stijnvanhulle/css-vars-loader/_apis/build/status/webpack-contrib.@stijnvanhulle/css-vars-loader?branchName=master
[tests-url]: https://dev.azure.com/webpack-contrib/@stijnvanhulle/css-vars-loader/_build/latest?definitionId=2&branchName=master
[cover]: https://codecov.io/gh/webpack-contrib/@stijnvanhulle/css-vars-loader/branch/master/graph/badge.svg
[cover-url]: https://codecov.io/gh/webpack-contrib/@stijnvanhulle/css-vars-loader
[chat]: https://img.shields.io/badge/gitter-webpack%2Fwebpack-brightgreen.svg
[chat-url]: https://gitter.im/webpack/webpack
[size]: https://packagephobia.now.sh/badge?p=@stijnvanhulle/css-vars-loader
[size-url]: https://packagephobia.now.sh/result?p=@stijnvanhulle/css-vars-loader
