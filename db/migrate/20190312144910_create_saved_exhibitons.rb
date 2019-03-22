class CreateSavedExhibitons < ActiveRecord::Migration[5.2]
  def change
    create_table :saved_exhibitions do |t|
      t.integer :user_id
      t.integer :exhibition_id

      t.timestamps
    end
  end
end
