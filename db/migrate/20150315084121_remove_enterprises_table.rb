class RemoveEnterprisesTable < ActiveRecord::Migration
  def change
    drop_table :enterprises
  end
end
