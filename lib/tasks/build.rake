namespace :tailwindcss do
  desc "Build your Tailwind CSS"
  task :build do |_, args|
    cmd = build_cmd
    cmd = cmd.concat(" --minify") if ENV.fetch("RAILS_ENV", "development") == "production"
    system(cmd, exception: true)
  end

  desc "Watch and build your Tailwind CSS on file changes"
  task :watch do |_, args|
    cmd = build_cmd.concat(" --watch")
    system(cmd, exception: true)
  end

  private

  def build_cmd
    "./node_modules/.bin/tailwindcss --postcss -i ./app/assets/stylesheets/application.css -o ./app/assets/builds/application.css"
  end
end

Rake::Task["assets:precompile"].enhance(["tailwindcss:build"])

if Rake::Task.task_defined?("test:prepare")
  Rake::Task["test:prepare"].enhance(["tailwindcss:build"])
elsif Rake::Task.task_defined?("db:test:prepare")
  Rake::Task["db:test:prepare"].enhance(["tailwindcss:build"])
end
