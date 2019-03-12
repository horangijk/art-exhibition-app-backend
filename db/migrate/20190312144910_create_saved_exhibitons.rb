class CreateSavedExhibitons < ActiveRecord::Migration[5.2]
  def change
    create_table :saved_exhibitions do |t|
      t.string :user_id
      t.string :exhibition_id

      t.timestamps
    end
  end
end
