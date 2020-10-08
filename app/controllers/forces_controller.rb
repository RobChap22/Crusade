class ForcesController < ApplicationController

  def index
    @forces = Force.all
  end

  def show
    @force = Force.find(params[:id])
  end
end
