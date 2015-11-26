React = require 'react'

module.exports = React.createClass
	getDefaultProps: ->
		type: 'text'
		autofocus: true

	render: ->
		<input {...@props}/>
