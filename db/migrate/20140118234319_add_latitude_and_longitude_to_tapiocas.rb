class AddLatitudeAndLongitudeToTapiocas < ActiveRecord::Migration
  def change
    add_column :tapiocas, :latitude, :float
    add_column :tapiocas, :longitude, :float
  end
end
