// $("button").click(function(){
//     var color = clicked ? 'red' : 'blue';
//     $(this).css('background-color', color);
//     clicked = !clicked;
// });

export const addListener = function addListeners() {
const button = document.querySelectorAll('.button');
button.forEach (button => {
button.addEventListener("click", () =>  {
button.style.backgroundColor = "black";
});
});
}

