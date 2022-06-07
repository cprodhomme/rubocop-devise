# frozen_string_literal: true

require 'rubocop'

require_relative 'rubocop/devise'
require_relative 'rubocop/devise/version'
require_relative 'rubocop/devise/inject'

RuboCop::Devise::Inject.defaults!

require_relative 'rubocop/cop/devise_cops'
