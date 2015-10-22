class AddDetailsToWalls < ActiveRecord::Migration
  def change
    add_column :walls, :uuid, :string
    add_column :walls, :title, :string
    add_belongs_to :walls, :user, index: true
  end
end
