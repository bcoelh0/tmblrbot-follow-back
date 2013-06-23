class AddsTumblrParamsToUsers < ActiveRecord::Migration
  def change
	add_column :users, :tumblr_name, :string
	add_column :users, :token, :string
	add_column :users, :secret, :string
	add_column :users, :points, :integer
	add_column :users, :featured, :boolean
  end
end
