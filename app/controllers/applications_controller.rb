class ApplicationsController < ApplicationController
  before_actin :find_application, only: %i[show edit update destroy]
  before_action :user

  def index
    @applications = Application.all
  end

  def show
  end

  def new
    @application = Appliation.new
  end

  def create
    @application = Application.new
    @application.user = @user
    if @application.save
      redirect_to application_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @application.
  end

  def update
  end

  def destroy
  end

  private

  def application_params
    params.require(:application).permit(:title, :category, :location, :experience, :content, :photos [])
  end

  def find_application
    @application = Application.find(params[:id])
  end

  def user
    @user = current_user
  end
end
