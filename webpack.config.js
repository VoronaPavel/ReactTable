module.exports = {
  entry: './src/App.cjsx',
  output: {
    path: './build/js/',
    filename: 'bundle.js'
  },
  module: {
    loaders: [
      { test: /\.cjsx$/, loaders: ['coffee-loader', 'cjsx-loader']}
    ]
  },
  watch: true
};