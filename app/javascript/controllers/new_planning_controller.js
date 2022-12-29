import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="new-planning"
export default class extends Controller {
  static targets = ["from", "submit", "error"]

  connect() {
    // console.log(this.fromTarget);
    const submit = this.submitTarget;
    submit.disabled = true;
  }

  checkMonday() {
    const submit = this.submitTarget;
    const error = this.errorTarget;
    const ruby_date = `"${this.fromTarget.value}"`;
    const date = new Date(ruby_date);
    const today = new Date();
    
    error.innerHTML = "";

    if(date.getDay() === 1 && date > today) {
      submit.disabled = false;
    }

    if(date.getDay() !== 1) {
      error.insertAdjacentHTML('beforeend', 'Date must be a <strong>Monday</strong> ! </br>');
      submit.disabled = true;
    }
    
    if(date <= today) {
      error.insertAdjacentHTML('beforeend', 'Date must be <strong>after today</strong> !');
      submit.disabled = true;
    }
  }
}
