class AddTermsToCompetences < ActiveRecord::Migration[5.1]
  def change
    change_table :terms do |table|
      table.belongs_to :competence, foreign_key: true
    end
  end
end
