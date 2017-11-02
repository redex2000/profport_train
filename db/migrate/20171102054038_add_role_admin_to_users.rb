class AddRoleAdminToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :admin, :boolean, default: false, comment: 'Признак, является ли пользователь администратором либо же нет'
  end
end
