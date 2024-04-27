import './App.css'
import './fonts/Jura-VariableFont_wght.ttf'
import './fonts/Imprima-Regular.ttf'
import PostItem from './components/postItem'
import { createClient } from "@supabase/supabase-js";
import { useEffect } from 'react';
import { useState } from 'react';
const API_KEY  = import.meta.env.VITE_API_KEY;

const supabase = createClient("https://xkmfpppjcuiwswqckkbp.supabase.co", API_KEY)

const App = () => {
  const [posts, setPosts] = useState([]);
  
  useEffect(() => {
    const getData = async () => {
      const data = await supabase.from("posts").select();
      setPosts(data.data)
    }
    getData();
  }, [])

  return (
    <>
    <div className='post-items'>
      {posts && posts.map((post, index) => {
        return <div key={index}>
          <PostItem hoursAgo={post.created_at} title={post.title} likes={post.likes} />
        </div>
      })}
    </div>
    </>
  )
}

export default App
