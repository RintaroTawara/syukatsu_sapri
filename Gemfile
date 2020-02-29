source 'https://rubygems.org'

gem 'rails',        '5.1.6'
gem 'puma',         '4.3.3'
gem 'sass-rails',   '5.0.6'
gem 'uglifier',     '3.2.0'
gem 'jquery-rails'
gem 'jbuilder',     '2.7.0'
gem 'devise'
gem 'omniauth-facebook'
gem 'bootstrap'
gem 'data-confirm-modal'
gem 'rails-i18n'
gem 'will_paginate',           '3.1.6'
gem 'bootstrap-will_paginate', '1.0.0'
gem "refile", github: 'refile/refile', require: "refile/rails"
gem "refile-mini_magick", github: 'refile/refile-mini_magick'
gem 'font-awesome-sass', '~> 5.4.1'
gem 'counter_culture', '~> 1.8'


group :development, :test do
  gem 'sqlite3', '1.3.13'
  gem 'byebug',  '9.0.6', platform: :mri
end

group :development do
  gem 'web-console',           '3.5.1'
  gem 'listen',                '3.1.5'
  gem 'spring',                '2.0.2'
  gem 'spring-watcher-listen', '2.0.1'
  gem 'pry-byebug'
end

group :test do
  gem 'rails-controller-testing', '1.0.2'
  gem 'minitest',                 '5.10.3'
  gem 'minitest-reporters',       '1.1.14'
  gem 'guard',                    '2.13.0'
  gem 'guard-minitest',           '2.4.4'
end

group :production do
  gem 'pg', '0.20.0'
end

# Windows環境ではtzinfo-dataというgemを含める必要があります
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]