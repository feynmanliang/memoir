class SlideShow < ActiveRecord::Base
  attr_accessible :name
  has_many :slides
end
