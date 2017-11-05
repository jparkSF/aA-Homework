//Simple Timout
setTimeout(() => console.log('say hello!'), 5000);


//Timeout Plus Closure

function hammerTime(time){
  setTimeout(function(){
    console.log(`${time} is HAMMER TIME!`);
  }, time);

  console.log('End of outer scope');

}

hammerTime(2000);
