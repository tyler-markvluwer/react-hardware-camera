EventEmitter = require('events').EventEmitter # used to tell UI when to update

class Model extends EventEmitter
	constructor: () ->

	set_image_uri: (uri) ->

	get_image_uri: () ->

module.exports = new Model()