class CreateFavs < ActiveRecord::Migration[6.1]
  def change
    create_table :favs do |t|
      t.references :user, null: false, foreign_key: true
      t.references :beach, null: false, foreign_key: true

      t.timestamps
    end
  end
end
