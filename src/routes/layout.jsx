import '../App.css'
import '../fonts/Jura-VariableFont_wght.ttf'
import '../fonts/Imprima-Regular.ttf'
import { Outlet } from 'react-router-dom'

const App = () => {
  return (
    <>
      <div className='layout-header'>
        <h1 id='app-logo'>Music stories</h1> 
        <input type="text" name="search" id="search-bar" placeholder='Search'/>
        <a href="asdf">Homepage</a>
        <a id='create-new-post' href="asdf">Create new post</a>
      </div>

      <div className="layout-body">
        <Outlet />
      </div>
    </>
  )
}

export default App
