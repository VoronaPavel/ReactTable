React = require 'react'

module.exports = ({children, autoFocus = true}) ->
  props = children.props
  if props.isEditing
    <input autoFocus={autoFocus} {...props}/>
  else
    <div {...props}>{props.value}</div>
