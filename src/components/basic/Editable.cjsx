React = require 'react'
Input = require './Input.cjsx'

module.exports = React.createClass
	getDefaultProps: ->
		isEditing: false

	printComponent: ->
		if @props.isEditing
			<Input {...@props} />
		else
			<div {...@props}>{@props.value}</div>

	render: ->
		@printComponent()
