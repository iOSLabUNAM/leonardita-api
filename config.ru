# frozen_string_literal: true

require 'bundler/setup'
require 'rack-cache'
require_relative "app"

use Rack::Cache
run LeonarditaApp