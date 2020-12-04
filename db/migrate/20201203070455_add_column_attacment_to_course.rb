class AddColumnAttacmentToCourse < ActiveRecord::Migration[6.0]
  def change 
	add_column :courses, :attachment, :string 
	remove_column :courses, :user_id
  end
end
