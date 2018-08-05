
Mousetrap.bindGlobal(['ctrl+s', 'meta+s'], function(e) {
    document.getElementById("next").click();
    return false;
});

//document.getElementById("submit_button").click();



//USER TRACKER COMBINATIONS

//Subscriber Search
Mousetrap.bindGlobal('ctrl+q', function(e) {
    window.location.href = 'https://tracker.serverplus.com/subscriber';
});

//Add New Subscriber
function addSub() {
  document.querySelector("a.button_accept:first-child").id = "addSubscriber"; // Click on the anchorw
  document.getElementById("addSubscriber").click();
}
Mousetrap.bindGlobal('alt+b', function(e) {
  addSub();
});


//Focus on notes
Mousetrap.bindGlobal('ctrl+alt+n', function(e) {
    setFocusToNotes();
});

//Focus on DT
Mousetrap.bindGlobal('ctrl+alt+k', function(e) {
    setFocusToDT();
});

//Focus to question
Mousetrap.bindGlobal('ctrl+alt+y', function(e) {
    setFocusToQuestion();
});

Mousetrap.bindGlobal('ctrl+alt+o', function(e) {
      setFocusToScreenZone();
});




//Scroll to NOTES FUNCTION
function setFocusToNotes() {
    var slidetonotes = document.getElementById("issue-notes");
    slidetonotes.scrollIntoView();
    slidetonotes.focus();
    document.getElementById("notes").focus();
}

//Scroll to DT FUNCTION
function setFocusToDT() {
    var slidetoDT = document.getElementById("dt");
    slidetoDT.scrollIntoView();
    document.getElementById("dt1").focus();
}

//Scroll to question FUNCTION
function setFocusToQuestion() {
    var slidetoQ = document.getElementById("question");
    slidetoQT.scrollIntoView();
    document.getElementById("dt1").focus();
}

//Scroll to question FUNCTION
function setFocusToScreenZone() {
    var slidetoSZ = document.getElementById("attachmentfs");
    slidetoSZ.scrollIntoView();
    slidetoSZ.focus();
}




//Create textbox for empty Customer Values
var createNAbox = document.querySelector("body");
createNAbox.insertAdjacentHTML('beforeend', '<textarea id="NA">NA</textarea><br>');
document.getElementById("NA").style.display = "none"



//EXTRACT NAME TEST////////////////////////////////////////////////


//PUT NAME IN INVISIBLE TEXTBOX
function prepNameCopy() {
  document.querySelector("h3.panel-title.text-capitalize strong").id="MasterName"; //ADD ID CLASS TO NAME
  var createNamebox = document.getElementById('MasterName'); // VAR FOR PLACING NAME TEXTBOX
  createNamebox.insertAdjacentHTML('afterend', '<textarea id="Namebox"></textarea><br>'); //ADD TEXT AREA BELOW VAR NAME
  document.getElementById("Namebox").style.display = "none"; //HIDE TEXTAREA
  var masterName = document.getElementById('MasterName').innerHTML;  //PUT NAME IN VAR
  document.getElementById("Namebox").value = masterName.trim(); //INSERT NAME INTO TEXTAREA
}

prepNameCopy();


//LABEL TABLE
document.querySelector("#subInfoBody .table.table-condensed").id="CustomerInfoTable";


//FIND AND ID TABLE CELL FUNCTION      http://jsfiddle.net/jfriend00/Uubqg/
function findAndLabel(nameInCell) {
  var cells = document.getElementById("CustomerInfoTable").getElementsByTagName("td");
  for (var i = 0; i < cells.length; i++) {
    if (cells[i].innerHTML == nameInCell) {
        //cells[i+1].style.backgroundColor = "red";
        cells[i+1].id = nameInCell;
    }
  }
}

//PLACE IDS
findAndLabel("Email");
findAndLabel("Phone");
findAndLabel("Address");
findAndLabel("City");
findAndLabel("State");
findAndLabel("External ID");


//PUT EMAIL IN INVISIBLE TEXTBOX !!TEST!!  Keep to recall creation process
function prepEmailCopy() {
  var createEmailbox = document.getElementById('Email'); // VAR FOR PLACING EMAIL TEXTBOX
  createEmailbox.insertAdjacentHTML('afterend', '<textarea id="emailbox"></textarea><br>'); //ADD TEXT AREA BELOW VAR EMAIL
  document.getElementById("emailbox").style.display = "none"; //HIDE TEXTAREA
  var masterEmail = document.getElementById('Email').innerHTML;  //PUT EMAIL IN VAR
  document.getElementById("emailbox").value = masterEmail.trim(); //INSERT EMAIL INTO TEXTAREA
}

//prepEmailCopy();


//PUT Information in INVISIBLE TEXTBOX

function prepforCopy(htmlID) {

  if (document.getElementById(htmlID)==null) {
    //alert(htmlID + " doesn't exist!")

  } else {
    var createbox = document.getElementById(htmlID); // VAR FOR PLACING TEXTBOX Below
    var htmlTextArea = "<textarea id=\"" + htmlID + "box\"></textarea><br>";  //VAR HTML TO PLACE TEXTAREA
    var htmlbox = htmlID + "box";  //TEXTAREA

    createbox.insertAdjacentHTML('afterend', htmlTextArea); //ADD TEXT AREA BELOW VAR
    document.getElementById(htmlbox).style.display = "none"; //HIDE TEXTAREA
    var masterHTML = document.getElementById(htmlID).innerHTML;  //PUT EMAIL IN VAR
    document.getElementById(htmlbox).value = masterHTML.trim(); //INSERT EMAIL INTO TEXTAREA
    //alert(htmlID + " exists! And is ready to copy")
  }
}

prepforCopy("Email");
prepforCopy("Phone");
prepforCopy("Address");
prepforCopy("City");
prepforCopy("State");
prepforCopy("External ID");




//TEXTBOX DISPLAY FUCTIONS

  //unhide text area
  function show(textBoxIdShow) {
      document.getElementById(textBoxIdShow).style.display = "block";
  }

  //hide text area
  function hide(textBoxIdHide) {
      document.getElementById(textBoxIdHide).style.display = "none";
  }

  //show or hide if then
  function showhide(textBoxId) {
    if (document.getElementById(textBoxId).style.display = "none") {
      document.getElementById(textBoxId).style.display = "block";
    }
    else {
      document.getElementById(textBoxId).style.display = "none";
    }
  }





  //COPY IT v2  https://stackoverflow.com/questions/400212/how-do-i-copy-to-the-clipboard-in-javascript
function copy2(cxAttribute){
  if (document.getElementById(cxAttribute)==null) {
    show("NA");
    var naTextarea = document.getElementById("NA");
    naTextarea.select();
    document.execCommand('copy');
    hide("NA");
  } else {
    show(cxAttribute); //show textarea
    var copyTextarea = document.getElementById(cxAttribute);
    copyTextarea.select();
    document.execCommand('copy');
    hide(cxAttribute); //hide textarea
  }
}


//MOUSTRAP COPY NAME!
Mousetrap.bindGlobal('alt+m', function(e) {
    copy2("Namebox");
	});

Mousetrap.bindGlobal('alt+e', function(e) {
    copy2("Emailbox");
	});

Mousetrap.bindGlobal('alt+p', function(e) {
    copy2("Phonebox");
  });

Mousetrap.bindGlobal('alt+i', function(e) {
    copy2("External IDbox");
  });



Mousetrap.bindGlobal('alt+l', function(e) {
    copy2("Addressbox");
  });

Mousetrap.bindGlobal('alt+c', function(e) {
    copy2("Citybox");
  });

Mousetrap.bindGlobal('alt+s', function(e) {
    copy2("Statebox");
  });




  //Prep Tracker for Exlusive use of ServerPlus Notepad////////////////

//Create information
var usingSPN = document.querySelector('#issue-notes');
usingSPN.insertAdjacentHTML('afterend', '<div id="assimilation" align="center" style="border:1px solid black;"><h2 style="color:darkblue"><b>ServerPlus Notepad Integration</h2><br><br><p>Once you have completed taking notes, press <b>Ctrl + Shift + Q</b> to add them to the issue<br><br></div>');
//document.getElementById('assimbutton').addEventListener("click", removeSPNblock);
document.querySelector('#assimilation').style.display = "none";

//At Extract
function prepForSPN() {
  //document.querySelector('#subInfoBody').style.display = "none"; //hide customer Information
  //document.querySelector('#subInfoBody.panel-body').style.display = "none";  //hide refresh!
  document.querySelector('#assimilation').style.display = "block";
  document.querySelector('#issue-notes').style.display = "none";
}

function removeSPNblock() {
  document.querySelector('#assimilation').style.display = "none";
  document.querySelector('#issue-notes').style.display = "block";
}



Mousetrap.bindGlobal('ctrl+alt+h', function(e) {
      prepForSPN();
    });


//At Injection
function injectNotes() {
  document.querySelector('#issue-notes').style.display = "block";
  document.querySelector('#assimilation').style.display = "none";
  document.querySelector('#notes').style.height = "500px";

}

Mousetrap.bindGlobal('ctrl+alt+j', function(e) {
      injectNotes();
      setFocusToNotes();
    });




//COPY NOTENUMBERS/////


//PASTE SCREENSHOT!!!!!!!!


    Mousetrap.bindGlobal('alt+v', function(e) {
        setFocusToScreenZone();
        document.querySelector('#screenshotzone').focus();
        setTimeout(setFocusToDT, 1500)
      });
