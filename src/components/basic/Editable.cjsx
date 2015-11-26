React = require 'react'
Input = require './Input.cjsx'

module.exports = React.createClass
	component: ->
		if @props.isEditing
			<Input {@props}> />
		else
			<div>{props.value}</div>

	render: ->
		@component()
