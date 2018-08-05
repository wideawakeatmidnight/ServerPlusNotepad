var addressMenuItem ={
  "id": "AEAddress",
  "title": "Send Address to Notepad",
  "contexts":["selection"]
}
chrome.contextMenus.create(addressMenuItem);

chrome.contextMenus.onClicked.addListener(function(clickData){
  if (clickData.menuItemID == "AEAddress" && clickData.selectionText){

  }
});



var emailMenuItem ={
  "id": "AEEmail",
  "title": "Send Email to Notepad",
  "contexts":["selection"]
}
chrome.contextMenus.create(emailMenuItem);


    alert("Hey Yo!");
