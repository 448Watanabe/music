class CreateSongs < ActiveRecord::Migration[5.2]
  def up
    create_table :songs do |t|
      t.string :name
      t.string :singer
      t.string :note
      t.string :url
      t.string :file
      t.string :category
      t.timestamps
    end
  end

  def down
    drop_table :songs
  end
end
