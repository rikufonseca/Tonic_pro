import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="planning"
export default class extends Controller {
  static values = {
    shifts: Array
  }
}
