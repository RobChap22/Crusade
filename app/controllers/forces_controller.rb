class ForcesController < ApplicationController

  def index
    @forces = Force.all
  end

  def show
    @force = Force.find(params[:id])
  end

  def new
    @force = Force.new
  end

  def create
    @force = Force.new(force_params)
    @force.user = current_user
    if @force.save
      redirect_to force_path(@force)
    else
      render :new
    end
  end


  private

  def force_params
    params.require(:force).permit(:name, :user, :faction, :power)
  end
end
