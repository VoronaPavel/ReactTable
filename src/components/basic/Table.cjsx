React = require 'react'
Tr = require './Tr'

module.exports = React.createClass
	getInitialState: ->
		editing: [undefined, undefined]
	render: ->
		<table>
			<tbody>
				{(<Tr key={i} {...@props}>{element}</Tr> for element, i in @props.data)}
			</tbody>
		</table>
