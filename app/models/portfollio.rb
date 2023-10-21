class Portfollio < ApplicationRecord
  include Placeholders
  before_save :set_defaults

  has_many :technologies
  validates_presence_of :title, :body
  scope :react, -> { where(subtitle: 'React')}
  scope :ruby_on_rails, -> { where(subtitle: 'Ruby on Rails') }

  def set_defaults
    self.main_image ||= Placeholder.image_generator(height: '600', width: '400')
    self.thumb_image ||= Placeholder.image_generator(height: '350', width: '200')
  end
end
