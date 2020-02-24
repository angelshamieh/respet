// $("button").click(function(){
//     var color = clicked ? 'red' : 'blue';
//     $(this).css('background-color', color);
//     clicked = !clicked;
// });

// export const addListener = function addListeners() {
// const button = document.querySelectorAll('.button');
// button.forEach (button => {
// button.addEventListener("click", () =>  {
// button.style.backgroundColor = "black";
// });
// });
// }



const setupEvents = () => {
  document.querySelectorAll('.animal-filter-icon').forEach((button) => {
    const buttonAnimalType = button.dataset.animalType
    button.addEventListener('click', (event) => {
      // TO DO: add CLASS to the button to give it an outline,
      // showing it is the currently selected filter.
      // document.querySelectorAll('.animal-button-outline'.forEach((icon) =>{
      //   const iconAnimalType = icon.dataset.animalType
      //   if (iconAnimalType == buttonAnimalType) {
      //     animal.classList.add('border')
      //   } else {
      //     animal.classList.remove('border')
      //   }
      // })

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
}


const initFilter = () => {
  document.addEventListener('DOMContentLoaded', () => {
    setupEvents()
  })
}

export { initFilter }
