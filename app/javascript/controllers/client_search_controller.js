import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["form", "phone"]

  connect() {
    console.log(this.element)
    console.log(this.phoneTarget)
    console.log(this.formTarget)
  }

  search(event) {
    event.preventDefault()

    const url = `http://${window.location.host}/getclient`
    const phone = this.phoneTarget.value

    console.log(JSON.stringify({ phone: phone }))

    fetch(url, {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify({ phone: phone })
    })
      .then(response => response.json())
      .then((data) => {
        console.log(data)
      })
  }
}
