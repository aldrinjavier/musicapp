class AddPictureToAlbums < ActiveRecord::Migration
  def change
    add_column :albums, :cover, :string

  end
end
