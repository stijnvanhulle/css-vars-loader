<div align="center">
  <a href="https://github.com/webpack/webpack">
    <img width="200" height="200" src="https://webpack.js.org/assets/icon-square-big.svg">
  </a>
</div>

# @stijnvanhulle/css-vars-loader

Loader to use config.json file as css variables

## Getting Started

To begin, you'll need to install `@stijnvanhulle/css-vars-loader`:

```console
$ npm install @stijnvanhulle/css-vars-loader --save-dev
```

**webpack.config.js**

```js
module.exports = {
  module: {
    rules: [
      {
        test: /\.css$/,
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

And run `webpack` via your preferred method.

## Options

### `modifyVars`

Type: `modifyVars`
Default: `undefined`

Object with all colours you wan to use as css variables

**webpack.config.js**

```js
module.exports = {
  module: {
    rules: [
      {
        loader: `css-vars-loader`,
        options: {
          modifyVars: {
            'primary-color': 'blue',
          },
        },
      },
    ],
  },
};
```

### `file`

Type: `file`
Default: `undefined`

The file where you want to append the css variables

**webpack.config.js**

```js
module.exports = {
  module: {
    rules: [
      {
        loader: `css-vars-loader`,
        options: {
          modifyVars: {
            'primary-color': 'blue',
          },
          file: Path.resolve('./css/global.css'),
        },
      },
    ],
  },
};
```

## Contributing

Please take a moment to read our contributing guidelines if you haven't yet done so.

[CONTRIBUTING](./.github/CONTRIBUTING.md)

## License

[MIT](./LICENSE)
