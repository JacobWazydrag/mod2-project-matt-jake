class CreateImages < ActiveRecord::Migration[6.0]
  def change
    create_table :images do |t|
      t.integer :user_id
      t.text :img_url

      t.timestamps
    end
  end
end
