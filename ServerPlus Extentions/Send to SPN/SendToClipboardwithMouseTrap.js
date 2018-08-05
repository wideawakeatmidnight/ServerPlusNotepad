//ADD TEXT AREA

var createTextbox = document.getElementById('put');
createTextbox.insertAdjacentHTML('afterend', '<textarea id="text">Hello world!!</textarea><br>');
alert("cool");



//PULL NAME TO TEXT AREA FUNCTION
function getNameVarible() {
  var place = document.getElementById("put").innerHTML;  //create varible out o paragrah text
  document.getElementById("text").value = place; //insert varible into text box
  }

getNameVarible()


//TEXTBOX DISPLAY FUCTIONS

//unhide text area
      function show() {
      document.getElementById("text").style.display = "block";
  }

  //hide text area
  function hide() {
      document.getElementById("text").style.display = "none";
  }




  //COPY IT
  function copy(){
  getNameVarible(); //Place name in textbox
  show(); //Run textarea show function
  var text = document.getElementById('text');
  var range = document.createRange();

  range.selectNode(text);
  window.getSelection().addRange(range);
  document.execCommand('copy');
  //document.getElementById('text').value = "p"; //empties hidden textbox
  hide();
  }

function duh() {
console.log("duh");
  }

//MOUSTRAP COPY
Mousetrap.bind('ctrl+shift+k', function(e) {
    copy();
	});
