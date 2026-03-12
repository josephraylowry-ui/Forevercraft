import { BrowserRouter, Routes, Route } from 'react-router-dom'
import Home from './pages/Home'
import Artifacts from './pages/Artifacts'
import Navbar from './components/Navbar'

export default function App() {
  return (
    <BrowserRouter>
      <Navbar />
      <Routes>
        <Route path='/' element={<Home />} />
        <Route path='/artifacts' element={<Artifacts />} />
      </Routes>
    </BrowserRouter>
  )
}
