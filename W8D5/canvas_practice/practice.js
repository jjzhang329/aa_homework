document.addEventListener("DOMContentLoaded", function(){
    let canvas = document.getElementById('mycanvas');
    canvas.width = 500;
    canvas.heigh = 500;
    let ctx = canvas.getContext('2d');
    ctx.fillStyle = "purple";
    ctx.fillRect(0, 0, 500, 500);

    ctx.beginPath();
    ctx.arc(100, 75, 50, 0, 2 * Math.PI,true);
    ctx.strokeStyle = "blue";
    ctx.lineWidth = 5;
    ctx.stroke();
    ctx.fillStyle = "pink";
    ctx.fill();

});

