React = require 'react'
ReactDOM = require 'react-dom'
Table = require './components/basic/Table'

App = ({data}) ->
	<Table data={data}/>

columns = [['#', 'login', 'password']]
data = [['1', 'pavel', '123456'], ['2', 'oleg', '432432'], ['3', 'aaaaaa', '654321']]

ReactDOM.render <App columns={columns} data={data} />, document.getElementById 'app'
