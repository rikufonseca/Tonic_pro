import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["form", "phone", "clientname", "clientsurname", "category", "errormessage", "catDiv"]

  search(event) {
    event.preventDefault()

    const url = `http://${window.location.host}/getclient`
    const client_name = this.clientnameTarget
    const client_surname = this.clientsurnameTarget
    const phone = this.phoneTarget.value
    let errormessage = this.errormessageTarget

      fetch(url, {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ phone: phone })
      })
        .then(response => response.json())
        .then((data) => {
          appendData(data)
        })

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

    const url = `http://${window.location.host}/getsubcat`;
    const categories = this.categoryTargets;
    const category = categories[categories.length -1].value;

    const catDivs = this.catDivTargets;

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
        let sub_categories = document.querySelector('#sub_categories');
        if ( sub_categories !== null){
          sub_categories.remove()
        };
        appendData(data, catDivs);
      })

    function appendData(data, catDivs) {

      const select = document.createElement("select");
      select.setAttribute('style', 'overfow-y: auto');
      select.setAttribute('style', 'width: 244.46px')
      select.setAttribute('id' , 'booking_sub_category1');
      select.setAttribute('class', 'form-select select optional');
      select.setAttribute('name', "booking[sub_category]");
        for (var i = 0; i < data.length; i++) {
          let option = document.createElement("option");
            option.text = data[i].name;
            option.value = data[i].id;
            select.appendChild(option);
        };

        const catDiv = catDivs[catDivs.length - 1];

      catDiv.appendChild(select);
    }
  }
}
