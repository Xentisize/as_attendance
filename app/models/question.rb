class Question < ActiveRecord::Base
  belongs_to :passage
  has_many :question_options

  validates :content, presence: true
end
