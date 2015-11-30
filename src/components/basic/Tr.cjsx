React = require 'react'
EditableTd = require './EditableTd'

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

  elements: ->
    @props.children.map (child, i) =>
      <EditableTd key={i}
          onMouseOver={@onMouseOver.bind(this, i)}
          onChange={@onChange.bind(this, i)}
          isEditing={@isEditing(i)}
          value={@state.values[i]} />

  render: ->
    <tr>{@elements()}</tr>
