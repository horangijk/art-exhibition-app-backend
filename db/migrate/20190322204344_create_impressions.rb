class CreateImpressions < ActiveRecord::Migration[5.2]
  def change
    create_table :impressions do |t|
      t.integer :user_id
      t.integer :exhibition_id
      t.string :title
      t.string :content
      t.timestamps
    end
  end
end
