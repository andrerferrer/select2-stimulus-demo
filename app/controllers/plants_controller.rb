class PlantsController < ApplicationController
  def new
    # empty plant
    @plant = Plant.new
    # garden that we will associate this plant to
    @garden = Garden.find(params[:garden_id])
  end

  def create
    @garden = Garden.find(params[:garden_id])
    @plant = Plant.new(strong_params)

    # both are the same
    # @plant.garden_id = @garden.id
    @plant.garden = @garden

    if @plant.save
      redirect_to garden_path(@garden)
    else
      render :new
    end
  end

  def destroy
    # finding the plant
    @plant = Plant.find(params[:id])
    # destroying the plant
    @plant.destroy
    # redirect to the garden path
    redirect_to garden_path(@plant.garden)
  end

  private

  def strong_params
    params.require(:plant)
          .permit(
            :name,
            :color,
            :photo_url
          )
  end
end
