import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  initialize () {
    this.submitButton = this.element.querySelector("[type='submit']")
    document.addEventListener("submit", (event) => {
      this.submitButton.setAttribute("disabled", "")

      // eslint-disable-next-line no-undef
      if (this.submitButton instanceof HTMLButtonElement) {
        this.submitButton.insertAdjacentHTML("afterbegin", this.spinner)
      // eslint-disable-next-line no-undef
      } else if (this.submitButton instanceof HTMLInputElement) {
        this.submitButton.value = "Waiting..."
      }
    })
  }

  get spinner () {
    return `<svg class="animate-spin -ml-1 mr-3 h-5 w-5 text-white" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24">
      <circle class="opacity-25" cx="12" cy="12" r="10" stroke="currentColor" stroke-width="4"></circle>
      <path class="opacity-75" fill="currentColor" d="M4 12a8 8 0 018-8V0C5.373 0 0 5.373 0 12h4zm2 5.291A7.962 7.962 0 014 12H0c0 3.042 1.135 5.824 3 7.938l3-2.647z"></path>
    </svg>`
  }
}
