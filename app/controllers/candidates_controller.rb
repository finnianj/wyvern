class CandidatesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new, :create]


  def new
    @candidate = Candidate.new
  end

  def index
  end

  def create
    @candidate = Candidate.new(candidate_params)
    if @candidate.save
      redirect_to root_path, notice: "Application was successfully created"
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def candidate_params
    params.require(:candidate).permit(:first_name, :last_name, :age, :gender, :email,
    :phone, :nationality, :residency, :address, :project_type, :project_description,
    :project_budget, :project_hours, :portfolio, :website, :extras)
  end


end