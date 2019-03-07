// app/javascript/components/navbar.js
const initUpdateNavbarOnScroll = () => {
  const navbar = document.querySelector('.navbar-hoxton');
  const gray = document.querySelector('.gray-logo');
  const white = document.querySelector('.white-logo');
  if (navbar) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= window.innerHeight / 4) {
        gray.style.display = "block"
        white.style.display = "none"
        navbar.classList.add('navbar-hoxton-white');
      } else {
        navbar.classList.remove('navbar-hoxton-white');
        gray.style.display = "none"
        white.style.display = "block"
      }
    });
  }
};

export { initUpdateNavbarOnScroll };



