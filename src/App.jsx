import './App.css'
import './fonts/Jura-VariableFont_wght.ttf'
import './fonts/Imprima-Regular.ttf'
import PostItem from './components/postItem'
import { createClient } from "@supabase/supabase-js";
import { useEffect } from 'react';
import { useState } from 'react';
import { useOutletContext } from 'react-router-dom';
const API_KEY  = import.meta.env.VITE_API_KEY;

const supabase = createClient("https://xkmfpppjcuiwswqckkbp.supabase.co", API_KEY)

const App = () => {
  const [posts, setPosts] = useState([]);
  const { search } = useOutletContext();

  useEffect(() => {
    const getData = async () => {
      const data = await supabase.from("posts").select();
      setPosts(data.data)
    }
    getData();
  }, [])

  const sortByDates = () => {
     posts.sort((a, b) => Date.parse(a.created_at) - Date.parse(b.created_at));
     setPosts([...posts]) 

  }

  const sortByVotes = () => {
    posts.sort((a, b) => b.likes - a.likes);
    setPosts([...posts]);
  }

  return (
    <>
    <div className='post-items'>
      <button className='sort-button' onClick={sortByVotes}>Sort by votes</button>
      <button className='sort-button' onClick={sortByDates}>Sort by date</button>

      {posts && posts
      .filter((post) => post.title.includes(search))
      .map((post, index) => {
        return <div key={index}>
          <PostItem hoursAgo={post.created_at} title={post.title} likes={post.likes} id={post.id} />
        </div>
      })}
    </div>
    </>
  )
}

export default App
