React = require 'react'
Input = require './Input'
Editable = require './Editable'

module.exports = React.createClass
	render: ->
		<td>
			<Editable {...@props} />
		</td>