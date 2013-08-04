class SlideShow < ActiveRecord::Base
  attr_accessible :name, :description, :color1, :color2
  has_many :slides
end
