class Skill < ApplicationRecord
  include Placeholders
  validates_presence_of :title, :percent_utilized
  before_save :set_defaults

  def set_defaults
    self.badge ||= Placeholder.image_generator(height: '250', width: '250')
  end
end
