import { Controller } from '@hotwired/stimulus'

export default class extends Controller {
  initialize () {
    this.element.classList.remove('hidden')
    this.element.classList.add('block')
  }
}
