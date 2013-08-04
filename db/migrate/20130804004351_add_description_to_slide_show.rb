class AddDescriptionToSlideShow < ActiveRecord::Migration
  def change
    add_column :slide_shows, :description, :string
  end
end
