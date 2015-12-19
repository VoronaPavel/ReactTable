React = require 'react'
Tr = require './Tr'

module.exports = ({data}) ->
	<table>
		<tbody>
			{(<Tr key={i}>{element}</Tr> for element, i in data)}
		</tbody>
	</table>
