React = require 'react'

module.exports = React.createClass
	getDefaultProps: ->
		type: 'text'
		autoFocus: true

	render: ->
		<input {...@props}/>
