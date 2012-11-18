class AdminController < ApplicationController
  def index
    @total_plays = Play.count
  end

end
