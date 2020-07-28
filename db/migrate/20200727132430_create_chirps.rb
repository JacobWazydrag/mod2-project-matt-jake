class CreateChirps < ActiveRecord::Migration[6.0]
  def change
    create_table :chirps do |t|
      t.integer :author_id
      t.text :chirp_text
      t.text :image_url

      t.timestamps
    end
  end
end
