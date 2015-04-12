# == Schema Information
#
# Table name: passages
#
#  id         :integer          not null, primary key
#  content    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Passage < ActiveRecord::Base
  has_many :questions

  validates :content, presence: true
end
