class DeleteEnterpriseIdFromPosts < ActiveRecord::Migration
  def change
    remove_column :posts, :enterprise_id
  end
end
