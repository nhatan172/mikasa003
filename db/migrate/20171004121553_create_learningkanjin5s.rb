class CreateLearningkanjin5s < ActiveRecord::Migration[5.1]
  def change
    create_table :learningkanjin5s do |t|
      t.integer :user_id
      t.integer :set_id
      t.integer :count_words

      t.timestamps
    end
  end
end
