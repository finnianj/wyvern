class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :about]


  def home
    @modal = true if params[:modal] == 'true'
  end

  def about
  end

end
