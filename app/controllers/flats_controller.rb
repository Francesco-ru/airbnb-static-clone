require "open-uri"

class FlatsController < ApplicationController
    URL =  "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
    before_action :flats_reader

    def index
    end

    def show
      @result = @flats.find do |flat|
        flat["id"] == params["id"].to_i
      end
    end

    private 

    def flats_reader
        @flats = JSON.parse(open(URL).read)
    end
end
