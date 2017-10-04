class CreateSetkanjin5s < ActiveRecord::Migration[5.1]
  def change
    create_table :setkanjin5s do |t|
      t.integer :set_id
      t.integer :kanji_id

      t.timestamps
    end
  end
end
