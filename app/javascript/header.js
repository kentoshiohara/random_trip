function click (){
  
  const clickBtnArea = document.getElementById("click-btn-area");

  clickBtnArea.addEventListener("click", function(){
    this.setAttribute("style", "background-color:rgb(238, 247, 255);")
  });
  logInLink.addEventListener('mouseout', function(){
    this.removeAttribute("style")
  });

};

window.addEventListener('load', click);