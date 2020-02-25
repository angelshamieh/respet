const setupEvents = () => {
  document.querySelectorAll('.animal-filter-icon').forEach((button) => {
    const buttonAnimalType = button.dataset.animalType
    button.addEventListener('click', (event) => {
      // TO DO: add CLASS to the button to give it an outline,
      // showing it is the currently selected filter.
      //  const iconList = document.querySelectorAll('.animal-button-outline');
      //   button.forEach (button => {
      //     button.addEventListener("click", () =>  {
      //     button.style.borderStyle = "solid";
      //     });
      // });
      // 1. get animal type of the button
      // 2. loop through all animals in the list
      document.querySelectorAll('.card-animal-list[data-animal-type]').forEach((animal) => {
        const cardAnimalType = animal.dataset.animalType
        // 3. if the animal's type matches the button, show it
        if (cardAnimalType == buttonAnimalType) {
          animal.classList.remove('d-none')
        } else {
          // 4. else, hide it.
          animal.classList.add('d-none')
        }
      })

    })
  })


  document.querySelectorAll('.list-button').forEach((button) => {
    button.addEventListener("click", () =>  {
      // Remove 'active' class from other buttons
      document.querySelectorAll('.list-button').forEach((b) => {
        b.classList.remove('active')
      })

      // Add 'active' class to THIS button
      button.classList.add('active')
    })
  })
}


const initFilter = () => {
  document.addEventListener('DOMContentLoaded', () => {
    setupEvents()
  })
}

export { initFilter }
