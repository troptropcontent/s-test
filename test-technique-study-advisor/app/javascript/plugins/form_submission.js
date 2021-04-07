//  the main goal of this function is to upgrade the UX of the form, 
// we hide the input radio button in the CSS by default
// with an event listener on eacher label we will checked "under the hood" the correct input that we want to submit

const formSubmission = () => {
  // fire the function only if the class propositions is detected (meaning that the dom conatines a form with proposition to be submited)
  const propositions = document.querySelector('.propositions')
  if (propositions) {
    // selection of all the labels with the attributes for like 'attempt_answer_id', we set the input hidden by default in the CSS
    const labels = document.querySelectorAll("label[for*='id_']")
    labels.forEach(element => {
      element.addEventListener('click',(event)=>{
        const selected = document.querySelector('.selected')
        if (selected) {
          selected.classList.toggle("selected")
        }
        // there is no need to check the input with js as it is a radio button, it is check when the label is checked
        const label = event.target
        label.classList.toggle("selected")
      })
    });
  }
}


export {formSubmission}