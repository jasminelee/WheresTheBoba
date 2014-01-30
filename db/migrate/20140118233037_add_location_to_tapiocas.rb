class AddLocationToTapiocas < ActiveRecord::Migration
	def change
		change_table :tapiocas do |t|
			t.string :location
		end

	end
end
