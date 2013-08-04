class AddColorsToSlideShow < ActiveRecord::Migration
  def change
    add_column :slide_shows, :color1, :string
    add_column :slide_shows, :color2, :string
  end
end
