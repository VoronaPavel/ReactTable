webpack = require 'webpack'

module.exports =
  entry: './src/App.cjsx'
  output:
    path: './build/js/'
    publicPath: '/build/js/'
    filename: 'bundle.js'
  plugins: [
    new webpack.HotModuleReplacementPlugin()
  ]
  module:
    loaders: [
      { test: /\.cjsx$/, loaders: ['react-hot-loader', 'coffee-loader', 'cjsx-loader']}
    ]
  resolve:
    extensions: ['', '.js', '.coffee', '.cjsx']
  watch: true