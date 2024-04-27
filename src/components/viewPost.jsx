import { useParams, useNavigate } from "react-router-dom";
import { createClient } from "@supabase/supabase-js";
import { useState, useEffect } from "react";

const API_KEY  = import.meta.env.VITE_API_KEY;
const supabase = createClient("https://xkmfpppjcuiwswqckkbp.supabase.co", API_KEY)


const ViewPost = () => {
    const navigate = useNavigate();

    const id = useParams().id;
    
    const [post, setPost] = useState([]);
    const [title, setTitle] = useState("")
    const [music, setMusic] = useState("")
    const [desc, setDesc] = useState("")
    const [likes, setLikes] = useState(0);
    
    const handleTitle = (e) => {
        setTitle(e.target.value)
    }
    const handleMusic = (e) => {
        setMusic(e.target.value)
    }
    const handleDesc = (e) => {
        setDesc(e.target.value)
    }
    const handleUpdate = async () => {
        if (!title || !music || !desc) {
            alert("Some inputs are empty. Try again")
            return
        }         
        const response = await supabase.from("posts").update(
            {
                "title": title,
                "description": desc,
                "music": music,
                "likes": 0
            }
        ).eq("id", id)
        console.log("Updated value, responsen is: ", response);
        navigate("/");
    }

    const handleDelete = async () => {
        const response = await supabase.from("posts").delete().eq("id", id);
        console.log("Deleted item, with response", response);
        navigate("/")
    }
     const handleLike = async () => {
        setLikes((prev) => prev + 1);
        const reponse = await supabase.from("posts").update({"likes": likes}).eq("id", id);
     }

    useEffect(() => {
        const getData = async () => {
            const data = await supabase.from("posts").select().eq("id", id);
            setPost(data.data[0]);
            setTitle(data.data[0].title);
            setMusic(data.data[0].music);
            setDesc(data.data[0].description);
            setLikes(data.data[0].likes)
        }
        getData();
    }, [])


    return <>
        {post &&  <div id="create-post-body">
            <input onChange={handleTitle} value={title} type="text" name="post-title" id="post-title" placeholder="Post title" required/>
            <input onChange={handleMusic} value={music} type="text" name="music-title" id="post-title" placeholder="Music name" required/>
            <textarea onChange={handleDesc} value={desc} placeholder="Description" required></textarea>

            <div className="view-buttons">
                <button className="submit-button" onClick={handleUpdate}>Update Post</button>
                <button className="submit-button" onClick={handleDelete}>Delete Post</button>
                <button className="submit-button" onClick={handleLike}>Like</button>
            </div>
        </div>
        }
    </>
}

export default ViewPost