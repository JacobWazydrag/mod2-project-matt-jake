class CreatePics < ActiveRecord::Migration[6.0]
  def change
    create_table :pics do |t|
      t.text :description
      t.text :pic_url

      t.timestamps
    end
  end
end
