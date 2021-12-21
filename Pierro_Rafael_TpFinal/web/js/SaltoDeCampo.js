function doThis(){
	let texto = document.getElementById('myInput').value;
  let stringLength = 5
  let counter = 0
  for(let i = 1; i < texto.length; i++){
    counter++
  	if(counter == 5){
    texto = [texto.slice(0, i), '\n', texto.slice(i)].join('');
    counter = 1
    i = i+2
    }
  }
	console.log(texto)
}
