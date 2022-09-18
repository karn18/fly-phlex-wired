/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    './app/components/**/*.{rb,html.erb}',
    './app/helpers/**/*.rb',
    './app/javascript/**/*.{js,ts}',
    './app/views/**/*',
  ],
  theme: {
    extend: {},
  },
  plugins: [],
}