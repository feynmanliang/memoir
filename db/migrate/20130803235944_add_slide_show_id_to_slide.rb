class AddSlideShowIdToSlide < ActiveRecord::Migration
  def change
    add_column :slides, :slide_show_id, :integer
  end
end
