const setupEvents = () => {
  document.querySelectorAll('.animal-filter-icon').forEach((button) => {
    button.addEventListener('click', (event) => {
      document.querySelectorAll('.animal-filter-icon').forEach((b) => {
        b.classList.remove('icon-border')
      })
      // Add 'active' class to THIS button
        button.classList.add('icon-border')
      })
    })
  };

const initButton = () => {
  document.addEventListener('DOMContentLoaded', () => {
    setupEvents()
  })
}

export { initButton }
