class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :category
      t.text :content
      t.belongs_to :passage

      t.timestamps null: false
    end
  end
end
