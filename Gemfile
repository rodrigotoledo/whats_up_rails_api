source 'https://rubygems.org'

ruby '3.2.1'

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem 'rails', '~> 7.1.3', '>= 7.1.3.2'

# Use sqlite3 as the database for Active Record
gem 'pg'

# Use the Puma web server [https://github.com/puma/puma]
gem 'puma', '>= 5.0'

# Build JSON APIs with ease [https://github.com/rails/jbuilder]
# gem "jbuilder"

# Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
# gem "kredis"

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
gem 'bcrypt', '~> 3.1.7'

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[windows jruby]

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', require: false

group :development, :test do
  # Ferramenta para debugar
  gem 'pry'
  # Carrega variáveis de ambiente a partir de um arquivo .env
  gem 'dotenv-rails'
  # Facilita a criação de mocks de objetos em testes
  gem 'factory_bot_rails'
  # Gera dados falsos para testes
  gem 'faker', '~> 3.2'
  # Guarda e executa automaticamente os testes
  gem 'guard-rspec', '~> 4.7'
  # Framework de testes RSpec
  gem 'rspec-rails'
  # Adiciona suporte para testes com shoulda-matchers
  gem 'shoulda-matchers', require: false
  # Analisa a cobertura de código dos testes
  gem 'simplecov'
end

group :development do
  # Anota os modelos com informações do schema do banco de dados
  gem 'annotate'
  # Ferramenta de segurança para Rails
  gem 'brakeman'
  # Ajuda a detectar queries N+1 em ActiveRecord
  gem 'bullet'
end

# Processamento de imagens
gem 'image_processing', '~> 1.2'
# Configuração de CORS para Rack
gem 'rack-cors', '~> 2.0'
# Banco de dados chave-valor em memória
gem 'redis', '>= 4.0.1'
# Ferramenta de análise estática de código Ruby
gem 'rubocop', require: false
# Extensão do RuboCop para Rails
gem 'rubocop-rails', require: false
