module.exports =
  entry: './src/App.cjsx'
  output:
    path: './build/js/'
    publicPath: '/build/js/'
    filename: 'bundle.js'
  module:
    loaders: [
      { test: /\.cjsx$/, loaders: ['coffee-loader', 'cjsx-loader']}
    ]
  resolve:
    extensions: ['', '.js', '.coffee', '.cjsx']
  watch: true