class CreatorsController < ApplicationController
  def index
    @creators = User.all
  end

  def show
    @creator = User.find(params[:id])
  end

  def new

  end

  def create

  end

  def edit

  end

  def update

  end
end
