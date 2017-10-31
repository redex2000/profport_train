class CreateConcepts < ActiveRecord::Migration[5.1]
  def change
    create_table :concepts do |t|
      t.belongs_to :user
      t.belongs_to :term
      t.float :level

      t.timestamps
    end
  end
end
