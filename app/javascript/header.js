window.addEventListener('load', function(){

  const tab = document.getElementById("accordion_tab");
  const contents = document.getElementById("accordion-contents");

  tab.addEventListener("mouseover", function(){
    if (contents.getAttribute("style") == "display:block;"){
      contents.removeAttribute("style")
    } else {
      contents.setAttribute("style", "display:block;")
    };
  });
});