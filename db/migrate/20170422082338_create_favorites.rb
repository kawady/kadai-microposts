class CreateFavorites < ActiveRecord::Migration[5.0]
  def change
    create_table :favorites do |t|
      t.references :user, foreign_key: true
      t.references :fav, foreign_key: { to_table: :users }

      t.timestamps
      
      t.index [:user_id, :fav_id], unique: true
    end
  end
end
