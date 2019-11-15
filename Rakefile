# frozen_string_literal: true
task default: %w[setup]

task :setup do

  raise '`brew` is required. Please install brew. https://brew.sh/' unless system('which brew')

  puts('➡️  Brew 🍺')
  sh('brew bundle')

  puts('➡️  Bundle 💎')
  sh('bundle install')

end
