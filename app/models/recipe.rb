# == Schema Information
#
# Table name: recipes
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  steps      :text
#  photo      :string(255)
#  serves     :integer
#  rating     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Recipe < ActiveRecord::Base
  attr_accessible :name, :photo, :rating, :serves, :steps, :kitchen_id, :remote_photo_url, :ingredient_ids
  belongs_to :kitchen
  has_many :ingredients
  mount_uploader :photo, RecipepikUploader
end
