const formCorrection = () => {
  // here we want to submit the form by AJAX and change the view according to the answer received in JSON
  
  const submitBtn = document.querySelector('input[type="submit"]')
  const quizzPropositions = document.querySelector(".quizz-propositions")
  
  // create an add event listener on the submit click
  
  if (submitBtn && quizzPropositions) {
    
    submitBtn.addEventListener('click', (event) => {
      const authenticity_token = document.querySelector('input[name="authenticity_token"]').value
      event.preventDefault();
      console.log(event)
      // sending the request with ajax (request template extracted from postman)
    
      const myHeaders = new Headers();
      myHeaders.append("Cookie", "__profilin=p%3Dt");
    
      const formdata = new FormData();
      formdata.append("authenticity_token", authenticity_token);
      formdata.append("attempt_answer[id]", document.querySelector('.selected').attributes.for.value.split('_')[1]);
      formdata.append("commit", "Create Attempt answer");
    
      const requestOptions = {
      method: 'POST',
      headers: myHeaders,
      body: formdata,
      redirect: 'follow'
      };
    
      fetch("http://localhost:3000/api/v1/attempt_answers", requestOptions)
      .then(response => response.json())
      // the response is a json following the format : 
      // {
      // "correct_answer":[{"id":251,"text":"Île de Pâques ","correct":true,"question_id":63,"created_at":"2021-04-06T09:02:46.732Z","updated_at":"2021-04-06T09:02:46.732Z","anecdote":null}],
      // "path_to_redirect_to":"/quizzs?id=21"
      // }
      .then(result => { console.log(result)
        // two cases possible here
          const userAnswer = document.querySelector('.selected').attributes.for.value.split('_')[1]
          const correctAnswer = result.correct_answer[0].id
          const question_text = document.querySelector(".question_text")
          const submitZone = document.querySelector(".submit-zone")
  
          if (parseInt(userAnswer) === correctAnswer) {
            // the user submited the correct anwer
            // change the text of the screen
            question_text.innerText = "Correct !!"
            question_text.insertAdjacentHTML("afterend", `<p>Le saviez-vous ? ${result.anecdote} ?</p>`)
            submitZone.innerHTML = `<a class="nav-link" href=${result.path_to_redirect_to}>Question suivante</a>`
            // turning the selected question in green
            document.querySelector('.selected').classList.toggle("correct")
          } else {
            // the user was wrong
            question_text.innerText = `Aie, la réponse était ${result.correct_answer[0].text}`
            question_text.insertAdjacentHTML("afterend", `<p>Le saviez-vous ? ${result.anecdote} ?</p>`)
            // renvoie vers Home si c'est la derniere question du quizz sinon "Question suivante"
            if (result.path_to_redirect_to.includes("question")) {
              submitZone.innerHTML = `<a class="nav-link" href=${result.path_to_redirect_to}>Question suivante</a>`
            } else {
              submitZone.innerHTML = `<a class="nav-link" href=${result.path_to_redirect_to}>Quizz terminé, retour au menu</a>`
            }
            // turning the correct answer green
            document.querySelector(`label[for="id_${correctAnswer}"]`).classList.toggle("correct")
            // turning the user answer red
            document.querySelector('.selected').classList.toggle("wrong")
          }
      })
      .catch(error => console.log('error', error));
  
    })
    
  }
  


}







export {formCorrection}