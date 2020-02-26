const handleNoActive = () => {
  let currentAnimals;
  let active = document.querySelector('.active-animal');
  if(active !== null){
    let animalType = active.dataset.animalType;
    currentAnimals =  document.querySelectorAll(`.card-animal-list[data-animal-type=${animalType}]`)
  }else{
    currentAnimals = document.querySelectorAll('.card-animal-list[data-animal-type]');
  }

  return currentAnimals;
}


const setupEvents = () => {
  document.querySelectorAll('.gender-list-button').forEach((button) => {
    const buttonAnimalGender = button.dataset.animalGender
    button.addEventListener('click', (event) => {

    // console.log(buttonAnimalGender)
    // 1. get animal type of the button
    // 2. loop through all animals in the list
      let animals = handleNoActive()
      animals.forEach((animal) => {
        const cardAnimalGender = animal.dataset.animalGender
        // console.log(cardAnimalGender)
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
