React = require 'react'
Td = require './Td.cjsx'

module.exports = React.createClass
	getInitialState: ->
		values: @props.children
		isEditing: false

	onClick: (i) ->
		if i is @state.indexOfEditing and @state.isEditing
			@setState isEditing: false
		else
			@setState isEditing: true, indexOfEditing: i

	onChange: (i, event) ->
		newValues = @state.values
		newValues[i] = event.target.value
		@setState values: newValues

	isEditing: (i) ->
		@state.isEditing and i is @state.indexOfEditing

	elements: ->
		@props.children.map (child, i) =>
			<Td key={i}
					onClick={@onClick.bind(this, i)}
					onChange={@onChange.bind(this, i)}
					isEditing={@isEditing(i)}
					value={@state.values[i]} />

	render: ->
		<tr>{@elements()}</tr>
