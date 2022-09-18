import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static values = {
    burgerId: { type: String, default: "burger" }
  }

  initialize () {
    this.element.querySelector(`#${this.burgerIdValue}`).addEventListener("click", this.toggleMenu.bind(this))
  }

  toggleMenu (event) {
    const navToggles = this.element.querySelectorAll(".toggle")
    navToggles.forEach((menu) => {
      menu.classList.toggle("hidden")
    })
  }
}
