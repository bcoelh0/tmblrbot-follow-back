class CreatesUsers < ActiveRecord::Migration
  def change


  	create_table :users do |t|
		t.string :tumblr_name
		t.string :token
		t.string :secret
		t.integer :points
		t.boolean :featured

		t.timestamps
	end
  end
end