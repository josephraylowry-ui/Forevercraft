import { useEffect, useRef, useState, type ReactNode } from 'react'

interface Props {
  children: ReactNode
  className?: string
  delay?: number
}

export default function ScrollReveal({ children, className = '', delay = 0 }: Props) {
  const ref = useRef<HTMLDivElement>(null)
  const [visible, setVisible] = useState(false)

  useEffect(() => {
    const el = ref.current
    if (!el) return

    const checkVisible = () => {
      if (visible) return
      const rect = el.getBoundingClientRect()
      if (rect.top < window.innerHeight + 100 && rect.bottom > -100) {
        setVisible(true)
      }
    }

    // Check immediately after layout
    const timer = setTimeout(checkVisible, 50)

    // Observer for scroll-based reveal
    const observer = new IntersectionObserver(
      ([entry]) => { if (entry.isIntersecting) { setVisible(true); observer.disconnect() } },
      { threshold: 0.01, rootMargin: '100px 0px 100px 0px' }
    )
    observer.observe(el)

    // Re-check when tab becomes visible again
    const onVisibility = () => { if (document.visibilityState === 'visible') checkVisible() }
    document.addEventListener('visibilitychange', onVisibility)

    // Also re-check on focus (covers alt-tab)
    window.addEventListener('focus', checkVisible)

    return () => {
      clearTimeout(timer)
      observer.disconnect()
      document.removeEventListener('visibilitychange', onVisibility)
      window.removeEventListener('focus', checkVisible)
    }
  }, [visible])

  return (
    <div
      ref={ref}
      className={`transition-all duration-700 ease-out ${visible ? 'opacity-100 translate-y-0' : 'opacity-0 translate-y-6'} ${className}`}
      style={{ transitionDelay: `${delay}ms` }}
    >
      {children}
    </div>
  )
}
