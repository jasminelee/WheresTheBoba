class CreateTapiocas < ActiveRecord::Migration
  def change
    create_table :tapiocas do |t|
      t.string :name
      t.text :description
      t.string :picture

      t.timestamps
    end
  end
end
