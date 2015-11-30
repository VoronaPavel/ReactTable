React = require 'react'
Editable = require './Editable'
Input = require './Input'

module.exports = React.createClass
	render: ->
		<td>
      <Editable>
        <div {...@props} />
      </Editable>
		</td>