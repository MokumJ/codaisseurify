class CreateSongs < ActiveRecord::Migration[5.1]
  def change
    create_table :songs do |t|
      t.string :name
      t.float :duration
      t.date :release
      t.string :album
      t.string :label

      t.timestamps
    end
  end
end
