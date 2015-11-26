React = require 'react'
Input = require './Input.cjsx'

module.exports = React.createClass
	additionalComponent: ->
		if @props.isEditing
			<Input onChange={@props.onChange}
						 value={@props.value}/>
		else
			@props.value

	render: ->
		<td {...@props}>{@additionalComponent()}</td>

###
	<Editable>
		<Td>
			@props.value
		</Td>
	</Editable>
###