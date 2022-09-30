// Test library
import {
  screen
} from '@testing-library/dom'
import '@testing-library/jest-dom'

// Application
import { Application } from '@hotwired/stimulus'
import GoodDayController from '../../app/javascript/controllers/good_day_controller'

describe("GoodDay", () => {
  beforeEach(() => {
    document.body.innerHTML = `
      <span data-testid="not-empty"><span data-testid="empty"></span></span>
      <div data-testid="visible">Visible Example</div>
      <div data-controller="good-day"></div>
    `
    const application = Application.start()
    application.register("good-day", GoodDayController)
  })

  it('loads items eventually', () => {
    console.log(document.body.innerHTML)
    expect(screen.queryByTestId('not-empty')).not.toBeEmptyDOMElement()
    expect(screen.getByText('Visible Example')).toBeVisible()
  })
})

