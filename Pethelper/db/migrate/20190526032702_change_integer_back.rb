class ChangeIntegerBack < ActiveRecord::Migration
  def change
    change_column :funcionarios, :role, :integer
  end
end
