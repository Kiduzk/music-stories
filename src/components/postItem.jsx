/* eslint-disable react/prop-types */

const PostItem = ( {hoursAgo, title, likes} ) => {
    return <>
        <div className="post-item">
            <h5>Posted on {hoursAgo.slice(0, 10)}, {hoursAgo.slice(11, 16)}</h5>
            <h2>{title}</h2>
            <h5>{likes} vote{likes !== 1 ? "s" : ""}</h5>
        </div>
    </>
}

export default PostItem;