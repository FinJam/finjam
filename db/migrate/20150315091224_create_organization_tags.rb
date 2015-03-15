class CreateOrganizationTags < ActiveRecord::Migration
  def change
    create_table :organization_tags do |t|
      t.integer :organization_id
      t.integer :tag_id

      t.timestamps null: false
    end
  end
end
