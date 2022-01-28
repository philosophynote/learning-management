source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

gem 'rails',      '6.1.4'
gem 'bcrypt',     '3.1.13'
gem 'faker',                   '2.1.2'
gem 'will_paginate',           '3.1.8'
gem 'bootstrap-will_paginate', '1.0.0'
gem 'bootstrap-sass', '3.4.1'
gem 'puma',       '5.5.2'
gem 'sass-rails', '5.1.0'
gem 'webpacker',  '4.0.7'
gem 'turbolinks', '5.2.0'
gem 'jbuilder',   '2.9.1'
gem 'bootsnap',   '1.4.5', require: false
gem 'psych', '~> 3.1'
gem 'rails-i18n', '~>6.0.0'

group :development, :test do
  gem 'sqlite3', '1.4.1'
  gem 'byebug',  '11.0.1', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'web-console',           '4.0.1'
  gem 'listen',                '3.7.1'
  gem 'spring',                '2.1.0'
  gem 'spring-watcher-listen', '2.0.1'
end

group :test do
  gem 'capybara',                 '3.36.0'
  gem 'selenium-webdriver',       '4.0.0'
  gem 'webdrivers',               '5.0.0'
  gem 'rails-controller-testing', '1.0.4'
  gem 'minitest',                 '~>5.15.0'
  gem 'minitest-reporters',       '~>1.3.8'
  gem 'guard',                    '2.18.0'
  gem 'guard-minitest',           '2.4.6'
end

group :production do
  gem 'pg', '1.2.3'
end

# Windows ではタイムゾーン情報用の tzinfo-data gem を含める必要があります
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

gem 'ransack' 