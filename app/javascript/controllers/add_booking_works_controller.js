import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="add-booking-works"
export default class extends Controller {

  static targets = [ "bookingWorks" ]

  connect() {
  }

  addWork() {
    const work = this.bookingWorksTarget
    const workHtml = `
    <div class="cats" data-client-search-target="catDiv">
      <div>
        <div class="mb-3 select optional booking_category"><select class="form-select select optional" data-client-search-target="category" data-action="change->client-search#select" name="booking[category]" id="booking_category">
          <option value="">Select a Category</option>
          <option value="25">Manicure</option>
          <option value="26">Pedicure</option>
          <option value="29">combo</option>
          <option value="27">Αντρική περιποίηση</option>
          <option value="28">εξτρα</option></select></div>
        </div>
      </div>
    </div>
    `
    work.insertAdjacentHTML("beforeend", workHtml)
  }
}
