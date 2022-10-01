import { Controller } from '@hotwired/stimulus'

export default class extends Controller {
  static values = {
    delay: Number,
    default: 0
  }

  connect () {
    this.element.classList.add('hidden')
    setTimeout(() => {
      this.show()
    }, this.delayValue)
  }

  show () {
    this.element.classList.remove('hidden')

    setTimeout(() => {
      this.element.classList.remove('opacity-0')
      this.element.classList.add('opacity-100')
    }, 100)

    setTimeout(() => {
      this.close()
    }, 5100)
  }

  close () {
    this.element.classList.remove('opacity-100')

    setTimeout(() => {
      this.element.classList.add('opacity-0')
    }, 100)

    setTimeout(() => {
      this.element.remove()
    }, 300)
  }
}
