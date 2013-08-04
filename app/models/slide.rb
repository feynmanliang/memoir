class Slide < ActiveRecord::Base
  attr_accessible :message, :photo_url
  validates_presence_of :photo_url
  belongs_to :slide_show
end
