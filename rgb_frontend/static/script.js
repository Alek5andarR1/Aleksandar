

function myColor(){
   var red = document.getElementById('red').value;
   var green = document.getElementById('green').value;
   var blue = document.getElementById('blue').value;

    var color = 'rgb('+ red +','+ green +','+ blue +')';

    document.body.style.backgroundColor = color;
    document.getElementById('box').value = color;
}

let btn = document.getElementById('btn');
let btn1 = document.getElementById('btn1');

btn.addEventListener("click", () => actionOnClick(btn));
btn1.addEventListener("click", () => actionOnClick(btn1));

btn.style.backgroundColor = 'rgb(0,0,0)';
btn1.style.backgroundColor = 'rgb(0,0,0)';


function actionOnClick(clickedButton) {
    
     
    clickedButton.style.backgroundColor = btnColor();

    colorConfig = new Array(btn.style.backgroundColor, btn1.style.backgroundColor);
    console.log(colorConfig);
   // console.log(btn.style.backgroundColor);
    colorConfig.forEach(element => element.split("(")[1].split(")")[0].split(",").map(function(x){
      return parseInt(x);
      })
      );
    /*var a = btn.style.backgroundColor.split("(")[1].split(")")[0].split(",").map(function(x){
      return parseInt(x);
      });
    
      var b = btn1.style.backgroundColor.split("(")[1].split(")")[0].split(",").map(function(x){
      return parseInt(x);
      });
    
    Array_Json = new Array(a , b);
    */
    Array_Json = new Array(colorConfig);
    console.log("new: " + Array_Json);


   var massage = {
          rgb_array: Array_Json
    };
     

    console.log(massage);

    fetch(`${window.origin}/data`, {
    method: "POST",
    credentials: "include",
    body: JSON.stringify(massage),
    cache: "no-cache",
    headers: new Headers({
      "content-type": "application/json"
    })
  })
    .then(function(response) {
    if (response.status !== 200) {
      console.log(`Looks like there was a problem. Status code: ${response.status}`);
      return;
    }
    response.json().then(function(data) {
      console.log(data);
    });
  })
  .catch(function(error) {
    console.log("Fetch error: " + error);
});

}

function btnColor() {
    var red = document.getElementById('red').value;
    var green = document.getElementById('green').value;
    var blue = document.getElementById('blue').value;
    colour = 'rgb('+ red +','+ green +','+ blue +')';
    //console.log(colour);
    return colour;
}





document.getElementById('red').addEventListener('input',myColor);
document.getElementById('green').addEventListener('input',myColor);
document.getElementById('blue').addEventListener('input',myColor);
