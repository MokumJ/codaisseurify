class CreateArtists < ActiveRecord::Migration[5.1]
  def change
    create_table :artists do |t|
      t.string :name
      t.string :picture
      t.string :nationality
      t.integer :birthyear

      t.timestamps
    end
  end
end
