class CreateSlides < ActiveRecord::Migration
  def change
    create_table :slides do |t|
      t.string :photo_url
      t.string :message

      t.timestamps
    end
  end
end
