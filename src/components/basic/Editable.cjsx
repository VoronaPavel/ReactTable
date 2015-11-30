React = require 'react'
Input = require './Input'

module.exports = ({children}) ->
  props = children.props
  if props.isEditing
    <Input autoFocus={true} {...props}/>
  else
    <div {...props}>{props.value}</div>