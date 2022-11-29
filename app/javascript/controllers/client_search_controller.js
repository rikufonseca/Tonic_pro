import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["form", "phone", "clientname", "clientsurname", "category", "errormessage"]

  search(event) {
    event.preventDefault()

    const url = `http://${window.location.host}/getclient`
    const client_name = this.clientnameTarget
    const client_surname = this.clientsurnameTarget
    const phone = this.phoneTarget.value
    let errormessage = this.errormessageTarget

    if(phone.length >= 10 && Number.isInteger(parseInt(phone))) {
      fetch(url, {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ phone: phone })
      })
        .then(response => response.json())
        .then((data) => {
          appendData(data)
        })
    } else {
      console.log("coucou")
       errormessage.innerHTML = "the number you entered is wrong!"
    }

    function appendData(data) {
      let div = document.createElement("div");
      let div_two = document.createElement("div_two");
      if ((data.length === 0)) {
        div = "";
        div_two = "";
      } else {
        for (let i = 0; i < data.length; i++) {
          div = data[i].name;
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

  //  console.log(category)
  //  console.log(JSON.stringify({ category: category }))

    fetch(url, {
      method: "POST",
      headers: {
        "Content-Type": "application/json" },
      body: JSON.stringify({ category: category })
    })
      .then(response => response.json())
      .then((data) => {
        console.log(data);
        let sub_categories = document.querySelector('#sub_categories');
        if ( sub_categories !== null){
          sub_categories.remove()
        };
        appendData(data);
      })

    function appendData(data){

      const select = document.createElement("select");
      select.setAttribute('style', 'overfow-y: auto');
      select.setAttribute('style', 'width: 244.46px')
      select.setAttribute('id' , 'booking_sub_category');
      select.setAttribute('class', 'form-select select optional');
      select.setAttribute('name', "booking[sub_category]");
        for (var i = 0; i < data.length; i++) {
          let option = document.createElement("option");
            option.text = data[i].name;
            option.value = data[i].id;
            select.appendChild(option);
        };

      document.querySelector(".cats").appendChild(select);
    }
  }
}
