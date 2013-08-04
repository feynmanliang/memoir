class CreateSlideShows < ActiveRecord::Migration
  def change
    create_table :slide_shows do |t|
      t.string :name

      t.timestamps
    end
  end
end
