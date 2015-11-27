React = require 'react'
Tr = require './Tr.cjsx'

module.exports = React.createClass
	rows: ->
		@props.data.map (element, i) ->
      <Tr key={i}>{element}</Tr>

	render: ->
		<table>
			<tbody>
				{@rows()}
			</tbody>
		</table>