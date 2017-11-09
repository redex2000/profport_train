class AddTypeToCompetences < ActiveRecord::Migration[5.1]
  def change
    add_column :competences, :type, :string
  end
end
