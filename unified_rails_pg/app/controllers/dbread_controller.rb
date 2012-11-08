class DbreadController < ApplicationController
  def index
    @results = AppTest.test_query
  end
end
