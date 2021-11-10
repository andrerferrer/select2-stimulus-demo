class AddPhotoUrlToPlants < ActiveRecord::Migration[6.1]
  def change
    add_column :plants, :photo_url, :string
  end
end
