const initNavHighlight = () => {
  document.querySelectorAll('.navbar-icon').forEach((button) => {

    button.addEventListener('click', (event) => {
    button.classList.remove('navbar-icon-inactive');
      button.classList.add('navbar-icon-active')
    });
  })
}

export { initNavHighlight }
