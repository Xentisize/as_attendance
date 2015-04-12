# == Schema Information
#
# Table name: question_options
#
#  id          :integer          not null, primary key
#  question_id :integer
#  option      :string
#  answer      :boolean
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class QuestionOption < ActiveRecord::Base
  belongs_to :question
end
