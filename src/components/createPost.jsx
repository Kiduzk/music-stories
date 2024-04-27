import { createClient } from "@supabase/supabase-js";
import { useState } from "react";
import { useNavigate } from "react-router-dom";

const API_KEY  = import.meta.env.VITE_API_KEY;
const supabase = createClient("https://xkmfpppjcuiwswqckkbp.supabase.co", API_KEY)

const CreatePost = () => {
    const navigate = useNavigate();
    
    const [title, setTitle] = useState("")
    const [music, setMusic] = useState("")
    const [desc, setDesc] = useState("")

    const handleTitle = (e) => {
        setTitle(e.target.value)
    }
    const handleMusic = (e) => {
        setMusic(e.target.value)
    }
    const handleDesc = (e) => {
        setDesc(e.target.value)
    }

    const handleSubmit = async () => {
        if (!title || !music || !desc) {
            alert("Some inputs are empty. Try again")
            return
        }         
        const response = await supabase.from("posts").insert(
            {
                "title": title,
                "description": desc,
                "music": music,
                "likes": 0
            }
        )
        console.log("The response from the database is", response)
        navigate("/");
    }
    return <>
        <div id="create-post-body">
            <input onChange={handleTitle} type="text" name="post-title" id="post-title" placeholder="Post title" required/>
            <input onChange={handleMusic} type="text" name="music-title" id="post-title" placeholder="Music name" required/>
            <textarea onChange={handleDesc} placeholder="Description" required></textarea> 
            <button id="submit-button" onClick={handleSubmit}>Submit Post</button>
        </div>
    </>
}

export default CreatePost