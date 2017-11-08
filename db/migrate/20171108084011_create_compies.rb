class CreateCompies < ActiveRecord::Migration[5.1]
  def change
    create_table :compies do |t|
      t.references :user, foreign_key: true
      t.references :competence, foreign_key: true

      t.timestamps
    end
    add_index :compies, [:user_id, :competence_id], unique: true

    change_table :concepts do |t|
      t.references :compy, foreign_key: true
    end
  end
end
