"use strict"

config = require './config'
logger = null

registration = (mimosaConfig, register) ->
  logger = mimosaConfig.log
  e = mimosaConfig.extensions
  register ['add','update','buildFile'],      'afterCompile', _minifyJS, e.javascript

_minifyJS = (mimosaConfig, options, next) ->
  for file in options.files
    file.outputFileText = minify(file.outputFileText)
  next()

###
registerCommand = (program, logger, retrieveConfig) ->
  program
    .command('foo')
    .description("Do something fooey")
    .action ->
      retrieveConfig { buildFirst: false }, config ->
        # execute command code
###

module.exports =
  registration:    registration
  #registerCommand: registerCommand
  defaults:        config.defaults
  validate:        config.validate