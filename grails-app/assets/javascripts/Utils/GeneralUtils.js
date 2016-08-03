
// convert camelCase to Camel Case.
var value = document.getElementsByName("convertCamelCase");
console.log(value)
convertCamelCase(value);


function convertCamelCase(value){

    for(i = 0; i < value.length ; i++){
        var temp = value[i];
        value[i].innerHTML = temp.innerHTML
            .replace(/([A-Z])/g, ' $1')
            .replace(/^./, function(str){ return str.toUpperCase(); }) ;

    }
}