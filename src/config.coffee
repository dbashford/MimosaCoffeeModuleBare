"use strict"

exports.defaults = ->
  minify:
    exclude:[]

exports.validate = (config, validators) ->
  errors = []
  #if validators.ifExistsIsObject(errors, "minify config", config.minify)
  #if validators.ifExistsIsArray(errors, "minify.exclude", config.minify.exclude)

  errors
