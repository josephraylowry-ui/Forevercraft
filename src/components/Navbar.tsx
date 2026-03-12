import { Link, useLocation } from 'react-router-dom'

export default function Navbar() {
  const location = useLocation()

  const links = [
    { label: 'Home', to: '/' },
    { label: 'Artifacts', to: '/artifacts' }
  ]

  return (
    <>
      <link
        href='https://fonts.googleapis.com/css2?family=Press+Start+2P&family=Crimson+Pro:ital,wght@0,400;0,600;1,400&display=swap'
        rel='stylesheet'
      />
      <nav className='sticky top-0 z-50 bg-stone-950 border-b-2 border-yellow-800 shadow-lg'>
        <div className='max-w-6xl mx-auto px-6 flex items-center justify-between h-16'>
          <Link to='/' className='flex items-center gap-3 no-underline'>
            <span className='text-2xl'>⛏</span>
            <span className="font-['Press_Start_2P'] text-[0.6rem] text-yellow-600 tracking-wider">
              FOREVERCRAFT
            </span>
          </Link>

          <div className='flex gap-8'>
            {links.map((link) => {
              const active = location.pathname === link.to
              return (
                <Link
                  key={link.to}
                  to={link.to}
                  className={`font-['Press_Start_2P'] text-[0.5rem] tracking-widest transition-colors no-underline pb-0.5 border-b-2 ${
                    active
                      ? 'text-yellow-500 border-yellow-500'
                      : 'text-stone-500 border-transparent hover:text-yellow-700'
                  }`}
                >
                  {link.label.toUpperCase()}
                </Link>
              )
            })}
          </div>
        </div>
      </nav>
    </>
  )
}
