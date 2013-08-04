class AddSlideShowViewIdToSlideShow < ActiveRecord::Migration
  def change
    add_column :slide_shows, :slide_show_view_id, :integer
  end
end
