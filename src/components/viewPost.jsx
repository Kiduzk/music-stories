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
    const [comment, setComment] = useState("");
    const [comments, setComments] = useState([]);
    
    const handleTitle = (e) => {
        setTitle(e.target.value)
    }
    const handleMusic = (e) => {
        setMusic(e.target.value)
    }
    const handleDesc = (e) => {
        setDesc(e.target.value)
    }
    const handleComment = (e) => {
        setComment(e.target.value)
    }
    const submitComment =  async () => {
        if (!comment) {
            alert("Comment can not be empty");
            return 
        }
        const response = await supabase.from("posts").update(
            {
                "comments": [...comments, comment] 
            }
        ).eq("id", id)
        
        setComments([...comments, comment]);
        setComment("");
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
        const response = await supabase.from("posts").update({"likes": likes + 1}).eq("id", id);
        setLikes(likes + 1);
        console.log("Updated likes", response)
    }
    useEffect(() => {
        const getData = async () => {
            const data = await supabase.from("posts").select().eq("id", id);
            setPost(data.data[0]);
            setTitle(data.data[0].title);
            setMusic(data.data[0].music);
            setDesc(data.data[0].description);
            setLikes(data.data[0].likes)
            setComments(data.data[0].comments !== null ? data.data[0].comments : [])
        }
        getData();
    }, [comments])


    return <>
        {post &&  
        <div id="create-post-body">
            <input onChange={handleTitle} value={title} type="text" name="post-title" id="post-title" placeholder="Post title" required/>
            <input onChange={handleMusic} value={music} type="text" name="music-title" id="post-title" placeholder="Music name" required/>
            <textarea onChange={handleDesc} value={desc} placeholder="Description" required></textarea>

            <div className="view-buttons">
                <button className="submit-button" onClick={handleUpdate}>Update Post</button>
                <button className="submit-button" onClick={handleDelete}>Delete Post</button>
                <button className="submit-button" onClick={handleLike}>Like</button>
            </div>

            <textarea value={comment} name="comment" id="comment" placeholder="Leave a comment..." onChange={handleComment}></textarea>
            <button className="submit-button" onClick={submitComment}>Comment</button>
        </div>
        }
        <div className="comment-container">
        <h2>Comments</h2> 
        {
            comments && comments.map((entry, index) => {
            return <div className="comment-entry" key={index}>
                {entry}
            </div>
           })
        }
        </div>
    </>
}

export default ViewPost