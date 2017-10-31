class CreateSkills < ActiveRecord::Migration[5.1]
  def change
    create_table :skills do |t|
      t.references :user, foreign_key: true
      t.references :instruction, foreign_key: true
      t.float :level

      t.timestamps
    end
  end
end
