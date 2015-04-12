# == Schema Information
#
# Table name: questions
#
#  id         :integer          not null, primary key
#  category   :string
#  content    :text
#  passage_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Question < ActiveRecord::Base
  belongs_to :passage
  has_many :question_options

  validates :content, presence: true
end
