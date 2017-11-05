//Phase II

const madLib = function(verb,adj,noun) {
  console.log(`We shall ${verb.toUpperCase()} the ${adj.toUpperCase()} ${noun.toUpperCase()}.`);
};
// madLib('make', 'best', 'guac');

const isSubstring = function(str, sub) {
  console.log(str.includes(sub));
};

// isSubstring("time to program", "time");
// isSubstring("Jump for joy", "joys");

const fizzBuzz = function(array){
  let newArray = [];
  array.forEach(function(el){

    if (el % 3 === 0 ^ el % 5 === 0){
      newArray.push(el);
    }
  });
  return newArray;
};
// fizzBuzz([1,2,3,4,5,6,7,8,9,15]);


const isPrime = function(n) {
  for (let i = 2; i < n; i++) {
    if (n % i === 0) {
      return false;
    }
  }
  return true;
};

// isPrime(13);

const sumOfNPrimes = function(n) {
  let sum = 0;
  let primeCounter = 0;
  let i = 2;

  while(primeCounter < n){
    if (isPrime(i)){
      sum += i;
      primeCounter++;
    }
    i++;
  }
  return sum;
};

// sumOfNPrimes(4);

const nameArray = ["Mary", "Brian", "Leo"];
const titleize = (names,cb) => {
  let titleized = names.map(name => cb(name));
};

const cb = (name) => console.log(`Mx. ${name} Jingleheimer Schmidt`);

// titleize(nameArray, cb);

//Phase III

const Elephant = function(name, height, tricks){
  this.name = name;
  this.height = height;
  this.tricks = tricks;
};

Elephant.prototype.trumpet = function(){
  console.log(`${this.name} the elephant goes 'phrRRRRRRRRRRR!!!!!!!'`);
};

Elephant.prototype.grow = function(){
  this.height += 12;
  console.log(this.height);
};

Elephant.prototype.play = function(){
  let randIndex = Math.floor(Math.random() * this.tricks.length);
  console.log(`${this.name} is this.tricks[${randIndex}]`);
};

Elephant.prototype.addTricks = function(newTrick) {
  this.tricks.push(newTrick);
  return this.tricks;
};

Elephant.prototype.paradeHelper = function(elephant){
  console.log(`${elephant.name} is trotting by!`);
};


let ellie = new Elephant("Ellie", 185,
            ["giving human friends a ride", "playing hide and seek"]);
let charlie = new Elephant("Charlie", 200,
            ["painting pictures", "spraying water for a slip and slide"]);
let kate = new Elephant("Kate", 234,
            ["writing letters", "stealing peanuts"]);
let micah = new Elephant("Micah", 143,
            ["trotting", "playing tic tac toe", "doing elephant ballet"]);

let herd = [ellie, charlie, kate, micah];

// herd.forEach(function(elephant){
//   elephant.paradeHelper(elephant);
// });

// Phase IV



const dinerBreakfast = function(){
  let menuArray = ['scrambled eggs bacon'];

  return (food) => {
    menuArray.push(food);
    let newOrder = `I'd like ${menuArray.join(" and ")} please.`;
    console.log(newOrder);
  };
};

let bfastOrder = dinerBreakfast();
// bfastOrder();
// bfastOrder("chocolate chip pancakes");
// bfastOrder("grits");
