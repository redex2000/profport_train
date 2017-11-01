class AddUniqueToUserTerm < ActiveRecord::Migration[5.1]
  def change
    add_index :concepts, [:user_id, :term_id], unique: true
  end
end
