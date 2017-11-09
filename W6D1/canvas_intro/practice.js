document.addEventListener("DOMContentLoaded", function(){
  let canvas = document.getElementById('myCanvas');
  let ctx = canvas.getContext('2d');

  canvas.height = 500;
  canvas.width = 500;

  // ctx.fillStyle = 'rgb(80, 155, 203)';
  // ctx.fillRect(100, 100, 100, 100);

  ctx.beginPath();
  ctx.arc(400, 400, 50, Math.PI/2 , Math.PI*2, true);
  ctx.strokeStyle = 'rgb(80, 155, 203)';
  ctx.lineWidth = 10;
  ctx.stroke();

  // ctx.beginPath();
  // ctx.moveTo(75, 50);
  // ctx.lineTo(175, 50);
  // ctx.lineTo(200, 75);
  // ctx.lineTo(175, 100);
  // ctx.lineTo(75, 100);
  // ctx.lineTo(50, 74);
  // ctx.closePath();
  // ctx.fillStyle = "rgb(80, 155, 203)";
  // ctx.fill();

});
