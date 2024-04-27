import '../App.css'
import '../fonts/Jura-VariableFont_wght.ttf'
import '../fonts/Imprima-Regular.ttf'
import { Outlet, Link } from 'react-router-dom'
import { useState } from 'react'

const App = () => {
  const [search, setSearch] = useState("");

  const handleSearch = (e) => {
    setSearch(e.target.value)
  }

  return (
    <>
      <div className='layout-header'>
        <h1 id='app-logo'>Music stories</h1> 
        <input onChange={handleSearch} type="text" name="search" id="search-bar" placeholder='Search'/>
        <Link class='link' id='homepage-link' to='/'>Homepage</Link>
        <Link class='link' id='create-post-link' to='/create-post'>Create new post</Link>
      </div>

      <div className="layout-body">
        <Outlet context={{search}} />
      </div>
    </>
  )
}

export default App
