//Sets Highlight Color
//document.querySelector("decisiontree li:focus").style.background = "yellow";



//COUNT LIST
//https://stackoverflow.com/questions/18224727/count-the-number-of-displayed-elements-in-a-html-list




//WORKS!!!! sets focus DT Tree, adds href to allow for focus
function AddIdHrefFocus() {
  //document.querySelector("#decisiontree li:first-child a").href="javascript:void(0)"; //Label first
  //document.querySelector("#decisiontree li:first-child a").id="dt1"; //child1
  var currentDTList = document.getElementById("decisiontree").getElementsByTagName("li");// varible with list HTML Object
  var DTLength = currentDTList.length//Number List items
  for (var DTNumber = 1; DTNumber <= DTLength; DTNumber++) {
    document.querySelector("#decisiontree li:nth-of-type(" + DTNumber + ") a").href="javascript:void(0)"; //child2
    document.querySelector("#decisiontree li:nth-of-type(" + DTNumber + ") a").id="dt" + DTNumber; //child2
    //document.getElementById("#dt" + DTNumber).addEventListener('click', DTrun()); //Not WORKIN'!! Lame - Focus on Mutation Observer
  }
  document.getElementById("dt1").focus();
  //Past dt href
  //document.querySelector('#decisiontree_past li a').href="javascript:void(0)"; //Crashs the browser

  //howtoo
}
AddIdHrefFocus();


//Add href to Past Desicion Tree

//function pastAddIdHrefFocus() {
  //if (document.querySelector('#decisiontree_past').innerHTML.length==0) {

  //} else {
    //var currentPDTList = document.querySelector('#decisiontree_past').getElementsByTagName("li");
    //var PDTLength = currentPDTList.length//Number List items
    //for (var PDTNumber = 1; PDTNumber <= PDTLength; PDTNumber++) {
    //  document.querySelector("#decisiontree_past li:nth-of-type(" + PDTNumber + ") a").href="javascript:void(0)"; //child2
    //  document.querySelector("#decisiontree_past li:nth-of-type(" + PDTNumber + ") a").id="pdt" + PDTNumber; //child2
//  }
//}






//reload DT Focus functions question span has changed
//https://developer.mozilla.org/en-US/docs/Web/API/MutationObserver

// select the target node
var questionSpan = document.querySelector('#decisiontree_past');

// create an observer instance
var observer = new MutationObserver(function(mutations) {
  mutations.forEach(function(mutation) {
    //console.log(mutation.type);
    AddIdHrefFocus();
  });
});

// configuration of the observer:
var configObserver = { attributes: true, childList: true, characterData: true, subtree:true };

// pass in the target node, as well as the observer options
observer.observe(questionSpan, configObserver);




/////////////////////////////////////////////

//Identify and label User Admin



//Click user admin
