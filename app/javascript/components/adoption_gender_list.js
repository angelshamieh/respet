const setupEvents = () => {
  document.querySelectorAll('.gender-list-button').forEach((button) => {
    const buttonAnimalGender = button.dataset.animalGender
    button.addEventListener('click', (event) => {

      // 1. get animal type of the button
      // 2. loop through all animals in the list
      document.querySelectorAll('.card-animal-list[data-animal-gender]').forEach((animal) => {
        const cardAnimalGender = animal.dataset.animalGender
        // 3. if the animal's type matches the button, show it
        if (cardAnimalGender == buttonAnimalGender) {
          animal.classList.remove('d-none')
        } else {
          // 4. else, hide it.
          animal.classList.add('d-none')
        }
      })

    })
  })
}

const initGenderFilter = () => {
  document.addEventListener('DOMContentLoaded', () => {
    setupEvents()
  })
}

export { initGenderFilter }
