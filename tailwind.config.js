/** @type {import('tailwindcss').Config} */
/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    './app/components/**/*.{rb,html}',
    './app/helpers/**/*.rb',
    './app/javascript/**/*.{js,ts}',
    './app/views/**/*',
  ],
  theme: {
    extend: {},
  },
  plugins: [],
}