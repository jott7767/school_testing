class SchoolsController < ApplicationController
  before_action :school, except: [:index, :new, :create]

  def index
    @schools = School.all
  end

  def show
    @school = School.find(params[:id])
  end

  def new
    @school = School.new
  end

  def create

  end

  def edit
  end

  def update

  end

  def destroy

  end

  private

    def school_params

    end

    def school
      @school = School.find(params[:id])
    end
end
