class AddColumnsOnAudios < ActiveRecord::Migration[5.2]
    def up
        add_column :audios, :name, :string
        add_column :audios, :singer, :string
        add_column :audios, :note, :string
        add_column :audios, :url, :string
        add_column :audios, :category, :string
    end
    def down
        remove_column :audios, :name, :string
        remove_column :audios, :singer, :string
        remove_column :audios, :note, :string
        remove_column :audios, :url, :string
        remove_column :audios, :category, :string
    end
end
