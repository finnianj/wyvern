class ApplicationsController < ApplicationController
  skip_before_action :authenticate_user!, only: :new


  def new
  end

  def index
  end
end
