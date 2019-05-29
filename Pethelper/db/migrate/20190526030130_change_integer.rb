class ChangeInteger < ActiveRecord::Migration
  def change
    change_column :funcionarios, :role, :string
  end
end
