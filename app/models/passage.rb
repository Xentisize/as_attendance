class Passage < ActiveRecord::Base
  has_many :questions

  validates :content, presence: true
end
