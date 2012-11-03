class AddRecipeToKitchen < ActiveRecord::Migration
  def change
  	add_column :kitchens, :recipe_id, :integer
  end
end
