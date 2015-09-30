EventEmitter = require('events').EventEmitter # used to tell UI when to update

class Model extends EventEmitter
	constructor: () ->
		@recent_uri = null

	set_image_uri: (uri) ->
		@recent_uri = uri
		@emit 'change'

	get_image_uri: () ->
		return @recent_uri

module.exports = new Model()