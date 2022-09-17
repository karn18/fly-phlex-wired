const { build } = require('esbuild')
const rails = require('esbuild-rails')

const start = Date.now()
build({
  entryPoints: ['./app/javascript/application.js'],
  outdir: './app/assets/builds',
  minify: process.env.RAILS_ENV === 'production',
  sourcemap: !(process.env.RAILS_ENV === 'production'),
  bundle: true,
  watch: process.argv.includes("--watch"),
  plugins: [rails()]
}).then(() => {
  console.log(`⚡ Built in ${Math.round(Date.now() - start)} ms. !!!`)
}).catch(() => process.exit(1))
