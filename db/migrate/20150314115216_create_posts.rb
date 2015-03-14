class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :description
      t.integer :enterprise_id
      t.integer :organization_id

      t.timestamps null: false
    end
  end
end
