class CreateQuestionOptions < ActiveRecord::Migration
  def change
    create_table :question_options do |t|
      t.belongs_to :question
      t.string :option
      t.boolean :answer

      t.timestamps null: false
    end
  end
end
