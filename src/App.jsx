import './App.css'
import './fonts/Jura-VariableFont_wght.ttf'
import './fonts/Imprima-Regular.ttf'
import PostItem from './components/postItem'

const data = [
  {
    name: 'my first post',
    song: 'Flower dance - Dj okawari',
    description: 'I love this song, it made me remember all this stuffy from ...',
    image: null
  }
]

const App = () => {
  return (
    <>
    <div className='post-items'>
      {data.map((entry, index) => {
        return <div key={index}>
          <PostItem />
        </div>
      })}
    </div>
    </>
  )
}

export default App
