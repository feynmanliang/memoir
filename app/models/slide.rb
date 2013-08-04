class Slide < ActiveRecord::Base
  attr_accessible :message, :photo_url
  belongs_to :slide_show
end
