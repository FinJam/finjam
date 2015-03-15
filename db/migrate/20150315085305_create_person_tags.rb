class CreatePersonTags < ActiveRecord::Migration
  def change
    create_table :person_tags do |t|
      t.integer :person_id
      t.integer :tag_id

      t.timestamps null: false
    end
  end
end
