# frozen_string_literal: true

require "sinatra"
require "leonardita"
require "json"

class LeonarditaApp < Sinatra::Base
  get '/' do
    cache_control :public, max_age: 36_000
    content_type :json
    { workshops_url: "https://leonardita.herokuapp.com/workshops", mentoring_url: "https://leonardita.herokuapp.com/mentoring" }.to_json
  end

  get '/workshops' do
    cache_control :public, max_age: 36_000
    content_type :json
    Leonardita.workshops.to_json
  end

  get '/mentoring' do
    cache_control :public, max_age: 36_000
    content_type :json
    Leonardita.mentoring.to_json
  end
end