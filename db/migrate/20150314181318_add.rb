class Add < ActiveRecord::Migration
  def change
    add_column :posts, :event_at, :datetime
  end
end
