class AddAuthTokenToStudents < ActiveRecord::Migration[7.1]
  def change
    add_column :students, :token, :string
  end
end
