import { useParams } from "react-router-dom";
import { createClient } from "@supabase/supabase-js";
import { useState, useEffect } from "react";

const API_KEY  = import.meta.env.VITE_API_KEY;
const supabase = createClient("https://xkmfpppjcuiwswqckkbp.supabase.co", API_KEY)


const ViewPost = () => {
    const id = useParams().id;
    const [post, setPost] = useState([]);
  
    useEffect(() => {
    const getData = async () => {
      const data = await supabase.from("posts").select().eq("id", id);
      setPost(data.data[0])
    }
    getData();
  }, [])


    return <>
        {post.description}
    </>
}

export default ViewPost