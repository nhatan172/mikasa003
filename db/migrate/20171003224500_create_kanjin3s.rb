class CreateKanjin3s < ActiveRecord::Migration[5.1]
  def change
    create_table :kanjin3s do |t|

      t.timestamps
    end
  end
end
