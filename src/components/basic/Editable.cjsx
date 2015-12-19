React = require 'react'
Input = require './Input'

module.exports = ({children, autoFocus = true}) ->
  props = children.props
  if props.isEditing
    <Input autoFocus={autoFocus} {...props}/>
  else
    <div {...props}>{props.value}</div>
