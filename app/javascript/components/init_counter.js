const initCounter = () => {
  // console.log("Coucou form init_counter")
  // Target le counter
  const counter = document.querySelector(".counter")
  // Target le bouton
  const button  = document.querySelector(".btn")
  // Mettre un eventListener sur le bouton
  button.addEventListener("click", () => {
    // Récupérer le restaurant_count
    fetch('/', { headers: { accept: "application/json" } })
        .then(response => response.json())
        .then((data) => {
          // console.log(data);
          // Updater le counter
          counter.innerHTML = `<span>${data}</span>`
        });
  })
}

export { initCounter }
