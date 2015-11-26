React = require 'react'
Row = require './Row.cjsx'

module.exports = React.createClass
	rows: ->
		@props.data.map((element, i) -> <Row key={i}>{element}</Row>)

	columns: ->
		<Row>{@props.columns}</Row>

	render: ->
		<table>
			<tbody>
				{@rows()}
			</tbody>
		</table>

			# <thead>
			# 	{@columns()}
			# </thead>