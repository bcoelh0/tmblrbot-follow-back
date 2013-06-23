class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
    	t.string :name
    	t.text :description
    	t.integer :followers
    	t.integer :user_id

      	t.timestamps
    end
  end
end
