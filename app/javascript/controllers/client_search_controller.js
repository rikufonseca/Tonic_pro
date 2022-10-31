import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["name", "form", "surname", "phone"]

  connect() {
    console.log(this.element)
    console.log(this.nameTarget)
    console.log(this.surnameTarget)
    console.log(this.phoneTarget)
    console.log(this.formTarget)
  }

  search(event) {
    event.preventDefault()

    fetch(this.formTarget.action, {
      method: "POST",
      headers: { "Search": "application/json" },
      body: new FormData(this.formTarget)
    })
      .then(response => response.json())
      .then((data) => {
        console.log(data)
      })
  }
}
