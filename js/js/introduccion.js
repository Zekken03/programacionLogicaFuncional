let x = [1,2,3,4]
const y = [...x, 20,50]
console.log(y)

const edadLegalEEUU = 21
const checkEstado = (edad, edadLegal) => {
    return edad >= edadLegal ? 'Mayor de edad' : 'Menor de edad'
}

const persona = checkEstado(18, edadLegalEEUU)
console.log(persona)

//JSON 
let arreglo = [
    {id: 1, name: 'Renato', age: 18},
    {id: 2, name: 'Ana', age: 22},
    {id: 3, name: 'Luis', age: 15},
    {id: 4, name: 'Maria', age: 30}
]
let ul = document.getElementById('lista')
var todo = ""
arreglo.forEach((item) => {
    item.age = item.age * 10
    todo += `<li>${item.name} - ${item.age} años</li>`
})
console.log(todo)
ul.innerHTML = todo

console.log("Arreglo original", arreglo);
var copia = arreglo.map((item, index) => {
    item.age *= 10
    return item
})
console.log("Arreglo modificado", copia);

let url = "https://thesimpsonsapi.com/api/"
fetch(url + "characters").then(response =>{
    if(!response.ok){
        console.log("Error en la llamada a la API");
    }
    return response.json()
}).then(data => {
    console.log("Datos del personaje", data);
    var lis=""
    data.results.forEach(personaje => {
        lis += `<li>
        <img width="200px" src="https://cdn.thesimpsonsapi.com/500${personaje.portrait_path}" alt="${personaje.name}" />
            <h2>
                ${personaje.name}
            </h2>
        </li>`
    })
    ul.innerHTML = lis
})  