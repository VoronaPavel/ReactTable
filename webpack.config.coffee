webpack = require 'webpack'
OpenBrowserPlugin = require 'open-browser-webpack-plugin'

module.exports =
  entry: './src/App.cjsx'
  output:
    path: './build/js/'
    publicPath: '/build/js/'
    filename: 'bundle.js'
  plugins: [
    new OpenBrowserPlugin {url: 'http://localhost:8080'}
    new webpack.HotModuleReplacementPlugin()
  ]
  module:
    loaders: [
      test: /\.cjsx$/
      loaders: ['react-hot-loader', 'coffee-loader', 'cjsx-loader']
      exclude: '/node_modules/'
    ]
  resolve:
    extensions: ['', '.js', '.coffee', '.cjsx']
