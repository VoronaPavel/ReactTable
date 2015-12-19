React = require 'react'
Editable = require './Editable'

module.exports = React.createClass
  getInitialState: ->
    values: @props.children

  onMouseOver: (i) ->
    @setState indexOfEditing: i, isEditing: true

  onChange: (i, event) ->
    newValues = @state.values
    newValues[i] = event.target.value
    @setState values: newValues

  isEditing: (i) ->
    @state.isEditing and i is @state.indexOfEditing

  render: ->
    <tr>
      {(for child, i in @props.children
        <td key={i}>
          <Editable>
            <div
              onMouseOver={@onMouseOver.bind(this, i)}
              onChange={@onChange.bind(this, i)}
              isEditing={@isEditing(i)}
              value={@state.values[i]} />
          </Editable>
        </td>)}
    </tr>
