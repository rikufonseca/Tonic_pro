import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["form", "phone", "clientname", "clientsurname", "category"]

  connect() {
    console.log(this.element)
    console.log(this.phoneTarget)
    console.log(this.formTarget)
    console.log(this.clientnameTarget)
    console.log(this.clientsurnameTarget)
    console.log(this.categoryTarget)
  }

  search(event) {
    event.preventDefault()

    const url = `http://${window.location.host}/getclient`
    const phone = this.phoneTarget.value
    const client_name = this.clientnameTarget
    const client_surname = this.clientsurnameTarget

   // console.log(JSON.stringify({ phone: phone }))

    fetch(url, {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify({ phone: phone })
    })
      .then(response => response.json())
      .then((data) => {
      //  console.log(data);
        appendData(data)
      })

    function appendData(data) {
      var div = document.createElement("div");
      var div_two = document.createElement("div_two");
      if ((data.length === 0)) {
        div = ""
        div_two = ""
      } else {
        for (let i = 0; i < data.length; i++) {
          div = data[i].name
          div_two = data[i].surname;
      }
    }
      client_name.value = div;
      client_surname.value = div_two;
    }
  }

  select(event) {
    event.preventDefault()

    const url = `http://${window.location.host}/getsubcat`
    const category = this.categoryTarget.value

    console.log(JSON.stringify({ category: category }))

    fetch(url, {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify({ category: category })
    })
      .then(response => response.json())
      .then((data) => {
        console.log(data);
        appendData(data)
      })
  }
}
