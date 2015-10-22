class AddDetailsToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :uuid, :string 
     
    * creator
    * wall_id 
    * create_at
    * content_id
  end
end
