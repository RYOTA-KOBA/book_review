# frozen_string_literal: true

module Api
  class HomeController < ApplicationController
    def index
      @test = 'a'
    end
  end
end
