//some tea?  some biscuits?

const readline = require('readline');

const reader = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});

function teaAndBiscuits () {
  let first, second;

  reader.question('Would you like some tea? yes/no ', (res) => {
    first = res;
    console.log(`You replied ${first}.`);


    reader.question('Would you like some biscuits? yes/no ', (res2) => {
      second = res2;
      console.log(`You replied ${second}.`);


      const firstRes = (first === 'yes') ? "do" : "don't";
      const secondRes = (second === 'yes') ? "do" : "don't";

      console.log(`so you ${firstRes} want tea, and ${secondRes} want biscuits.`);
      reader.close();
    });
  });
}

teaAndBiscuits();
