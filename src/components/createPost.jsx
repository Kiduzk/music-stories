const createPost = () => {
    return <>
        <div id="create-post-body">
            <input type="text" name="post-title" id="post-title" placeholder="Post title" required/>
            <input type="text" name="music-title" id="post-title" placeholder="Music name" required/>
            <textarea placeholder="Description" required></textarea> 
            <input type="text" name="post-title" id="image-url" placeholder="Image url (optional)" required/>
            <button id="submit-button">Submit Post</button>
        </div>
    </>
}

export default createPost