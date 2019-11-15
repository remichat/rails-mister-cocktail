const passwordInput = document.getElementById('cocktail_passphrase');
console.log(passwordInput);

passwordInput.addEventListener('keyup', (event) => {
  console.log(passwordInput.value);
  const url = `https://les-cocktails-de-chatons.herokuapp.com/checkpassword/${passwordInput.value}`;
  fetch(url)
    .then(response => response.json())
    .then((data) => {
      const retour = document.getElementById('retour');
      console.log(data.return)
      if (data.return === false) {
        retour.innerText = 'Toujours pas'
      } else {
        retour.innerText = 'Bravo'
      }

    });
});
