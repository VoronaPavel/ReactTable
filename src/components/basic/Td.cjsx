React = require 'react'
Input = require './Input.cjsx'
Editable = require './Editable.cjsx'

module.exports = React.createClass
	render: ->
		<td>
			<Editable {...@props} />
		</td>