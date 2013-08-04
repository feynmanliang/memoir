class AddUserIdToSlideShows < ActiveRecord::Migration
  def change
    add_column :slide_shows, :user_id, :integer
  end
end
