class UnitsController < ApplicationController

  def show
    @unit = Unit.find(params[:id])
  end

  def new
    @force = Force.find(params[:force_id])
    @unit = Unit.new
  end

  def create
    @force = Force.find(params[:force_id])

    @unit = Unit.new(unit_params)
    @unit.force = @force

    if @unit.save
      redirect_to unit_path(@unit)
    else
      render :new
    end
  end


  private

  def unit_params
    params.require(:unit).permit(:name, :role, :supply_value, :unit_type, :equipment, :force_id, :rank)
  end

end
