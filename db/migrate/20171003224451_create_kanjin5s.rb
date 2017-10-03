class CreateKanjin5s < ActiveRecord::Migration[5.1]
  def change
    create_table :kanjin5s do |t|

      t.timestamps
    end
  end
end
