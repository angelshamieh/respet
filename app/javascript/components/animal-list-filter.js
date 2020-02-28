import { filterAnimals } from './animal-lists'

const toggleActiveAnimal = (animal) => {
    let buttons = document.querySelectorAll('.animal-filter-icon');
    buttons.forEach((button) => {
      let isActive = button.classList.contains('active-animal');
      let currentAnimal = (button.dataset.animalType === animal.dataset.animalType);
      if(currentAnimal){
          button.classList.add('active-animal');
      }else{
          button.classList.remove('active-animal')
      }
    })
}



const setupEvents = () => {
  document.querySelectorAll('.animal-filter-icon').forEach((button) => {
    const buttonAnimalType = button.dataset.animalType
    button.addEventListener('click', (event) => {
      event.preventDefault()
      toggleActiveAnimal(button)
      filterAnimals()
    })
  })



  document.querySelectorAll('.list-button').forEach((button) => {
    button.addEventListener("click", () =>  {
      event.preventDefault()
      // Remove 'active' class from other buttons
      document.querySelectorAll('.list-button').forEach((b) => {
        b.classList.remove('active')
      })

      // Add 'active' class to THIS button
      button.classList.add('active')
    })
  })
};



const initFilter = () => {
  document.addEventListener('DOMContentLoaded', () => {
    setupEvents()
  })
}

export { initFilter }
