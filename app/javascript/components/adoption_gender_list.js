import { filterAnimals } from './animal-lists'

const setupEvents = () => {
  document.querySelectorAll('.gender-list-button').forEach((button) => {
    const buttonAnimalGender = button.dataset.animalGender
    button.addEventListener('click', (event) => {
      event.preventDefault()
      filterAnimals()
    })
  })
}

const initGenderFilter = () => {
  document.addEventListener('DOMContentLoaded', () => {
    setupEvents()
  })
}

export { initGenderFilter }
