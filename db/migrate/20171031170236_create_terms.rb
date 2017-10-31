class CreateTerms < ActiveRecord::Migration[5.1]
  def change
    create_table :terms do |t|
      t.string :title, null: false
      t.text :definition, null: false

      t.timestamps
    end
  end
end
