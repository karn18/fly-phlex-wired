import { Controller } from '@hotwired/stimulus'

export default class extends Controller {
  GOOD_WORDS = ['a great', 'an awesome', 'a funny']

  initialize () {
    const index = Math.floor(Math.random() * this.GOOD_WORDS.length)
    this.element.innerHTML = `Have ${this.GOOD_WORDS[index]} day`
  }
}
