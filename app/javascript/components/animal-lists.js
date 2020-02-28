const getSelectedGender = () => {
  const selector = '.gender-list-button.active'
  const selectedButton = document.querySelector(selector)
  if (selectedButton) {
    return selectedButton.dataset.animalGender
  }
  return null
}

const getSelectedAnimalType = () => {
  const selector = '.animal-filter-icon.active-animal'
  const selectedButton = document.querySelector(selector)
  if (selectedButton) {
    return selectedButton.dataset.animalType
  }
  return null
}

const filterAnimals = () => {
  // 1. Do we have a gender filter selected?
  const selectedGender = getSelectedGender()
  // 2. Do we have an animal type filter selected?
  const selectedAnimalType = getSelectedAnimalType()

  // 3. Loop through each animal card
  document.querySelectorAll('.card-animal-list').forEach((animal) => {
    const cardAnimalType = animal.dataset.animalType
    const cardAnimalGender = animal.dataset.animalGender

    // 4. Show/hide the card, depending on the filters
    let toShow = true
    if (selectedGender && cardAnimalGender != selectedGender) {
      toShow = false
    }
    if (selectedAnimalType && cardAnimalType != selectedAnimalType) {
      toShow = false
    }
    // 3. if the animal should be shown, show it
    if (toShow) {
      animal.classList.remove('d-none')
    } else {
      // 4. else, hide it.
      animal.classList.add('d-none')
    }
  })
}

export { filterAnimals }
