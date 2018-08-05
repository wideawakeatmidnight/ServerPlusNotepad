function labelOldNote() {
  //document.querySelector("#decisiontree li:first-child a").href="javascript:void(0)"; //Label first
  //document.querySelector("#decisiontree li:first-child a").id="dt1"; //child1
  var noteIDList = document.getElementsByClassName("noteid");// varible with list HTML Object
  var NIDLength = noteIDList.length;//Number List items
  alert(NIDLength);
  //for (var NIDNumber = 1; NIDNumber <= NIDLength; NIDNumber++) {
    //document.querySelector(".noteid[" + NIDNumber + "]").id="NID" + NIDNumber; //child2
    //document.getElementById("#dt" + DTNumber).addEventListener('click', DTrun()); //Not WORKIN'!! Lame - Focus on Mutation Observer
  //}
}

//labelOldNote();
