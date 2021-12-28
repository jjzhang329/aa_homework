document.addEventListener("DOMContentLoaded", () => {
  // toggling restaurants

  const toggleLi = (e) => {
    const li = e.target;
    if (li.className === "visited") {
      li.className = "";
    } else {
      li.className = "visited";
    }
  };

  document.querySelectorAll("#restaurants li").forEach((li) => {
    li.addEventListener("click", toggleLi);
  });



  // adding SF places as list items

  // --- your code here!
  const form = document.querySelector("form");
  form.addEventListener('submit', event=>{
    event.preventDefault();
    const placeName = document.querySelector(".favorite-input").value;
    const ul = document.getElementById("sf-places");
    const li = document.createElement('li')
    li.textContent = placeName;
    
    ul.append(li);
  })



  // adding new photos

  // --- your code here!
  const showPhotoForm = (e) => {
    const photoFormDiv = document.querySelector(".photo-form-container");
    if (photoFormDiv.className === "photo-form-container") {
      photoFormDiv.className = "photo-form-container hidden";
    } else {
      photoFormDiv.className = "photo-form-container";
    }
  };

  const photoFormShowButton = document.querySelector(".photo-show-button");
  photoFormShowButton.addEventListener("click", showPhotoForm);

  const photoSubmit= (e) =>{
    e.preventDefault();
   const photo = document.querySelector('.photo-url-input').value;
    const newImage = document.createElement("img");
    newImage.src = photo;
    const li = document.createElement('li')
    li.append(newImage);
    const ul = document.querySelector(".dog-photos")
    ul.append(li);

  }
  const photoSubmitButton = document.querySelector(".photo-url-submit");
  photoSubmitButton.addEventListener("click", photoSubmit);

});
