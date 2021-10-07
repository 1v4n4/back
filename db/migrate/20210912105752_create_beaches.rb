class CreateBeaches < ActiveRecord::Migration[6.1]
  def change
    create_table :beaches do |t|
      t.string :name
      t.string :county
      t.string :location
      t.string :description
      t.string :parking
      t.string :restrooms
      t.string :campground
      t.string :photo1
      t.string :photo2
      t.string :photo3
      t.string :photo4

      t.timestamps
    end
  end
end
