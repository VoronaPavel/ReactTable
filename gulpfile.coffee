require 'coffee-script/register'
gulp            = require 'gulp'
source          = require 'vinyl-source-stream'
browserify      = require 'browserify'
cjsxify         = require 'cjsxify'
config          = require './config.coffee'

log = (error) ->
  console.log [
    '',
    "----------------------------------------".red,
    ("[" + error.name + " in " + error.plugin + "]").red,
    error.message,
    "----------------------------------------".red,
    ''
  ].join('\n')


buildBrowserify = (srcPath, destDir, destFile) ->
  args =
    entries: [srcPath]
    extensions: ['.coffee', '.cjsx', '.jsx', '.js']
    debug: true
  bundler = browserify(args)
  bundler.transform(cjsxify)

  bundle = ->
    bundler
    .bundle().on('error', log)
    .pipe(source(destFile)).on('error', log)
    .pipe(gulp.dest(destDir)).on('error', log)

  bundle()

build = ->
  destDir = config.path.destination
  destFile = config.path.outputFile
  srcPath = config.path.inputFile
  buildBrowserify(srcPath, destDir, destFile)

gulp.task 'bundle', ->
  build()


gulp.task 'watch', ->
  gulp.watch config.path.scripts, ['bundle']

gulp.task 'default', ['watch']
