// app/javascript/components/navbar.js
const initUpdateNavbarOnScroll = () => {
  const navbar = document.querySelector('.navbar-hoxton');
  if (navbar) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= window.innerHeight) {
        navbar.classList.add('navbar-hoxton-white');
      } else {
        navbar.classList.remove('navbar-hoxton-white');
      }
    });
  }
};

export { initUpdateNavbarOnScroll };
