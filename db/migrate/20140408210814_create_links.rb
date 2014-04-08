class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
    	t.string :url
    	t.integer :rank
    	t.references :user
    end
  end
end
