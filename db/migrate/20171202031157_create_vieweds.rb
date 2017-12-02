class CreateVieweds < ActiveRecord::Migration[5.1]
  def change
    create_table :vieweds do |t|
      t.integer :user_viewing_id
      t.integer :user_viewed_id
      t.string :info_viewed

      t.timestamps
    end
  end
end
