import React from 'react'
import ReactDOM from 'react-dom/client'
import App from './App.jsx'
import './index.css'
import { BrowserRouter, Route, Routes} from 'react-router-dom'
import Layout from './routes/layout.jsx'
import CreatePost from './components/createPost.jsx'
import ViewPost from './components/viewPost.jsx'

ReactDOM.createRoot(document.getElementById('root')).render(
  <React.StrictMode>
    <BrowserRouter>
      <Routes>
        <Route path='/' element={<Layout />}>
          <Route index element={<App />} />
        </Route>

        <Route path='/create-post' element={<Layout />}>
          <Route index element={<CreatePost />}></Route>
        </Route>

        <Route path='/view-post/:id' element={<Layout />}>
          <Route index element={<ViewPost />}></Route>
        </Route>

      </Routes>
    </BrowserRouter>
  </React.StrictMode>,
)
