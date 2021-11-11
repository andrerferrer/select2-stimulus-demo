class PlantTagsController < ApplicationController
  def new
    # we create an empty model for the form
    @plant_tag = PlantTag.new
    # we find the parent model
    @plant = Plant.find params[:plant_id]
  end

  # this example doesnt handle the not saving scenario
  def create
    @plant = Plant.find params[:plant_id]
    tags_ids = params[:plant_tag][:tag_id] # this is coming from the form
    tags = Tag.find(tags_ids) # find all the tags with those ids
    tags.each do |tag| # for each tag,
      # create one connection between tag and plant (the specific one)
      plant_tag = PlantTag.new(tag_id: tag.id, plant_id: @plant.id)
      plant_tag.save
    end
    # redirect to the garden show page
    redirect_to garden_path(@plant.garden)
  end

  private

  def strong_params
    params.require(:plant_tag).permit(:tag_id)
  end
end
