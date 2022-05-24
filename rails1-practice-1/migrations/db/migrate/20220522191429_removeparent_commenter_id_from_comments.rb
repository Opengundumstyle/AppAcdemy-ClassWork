class RemoveparentCommenterIdFromComments < ActiveRecord::Migration[5.2]
  def change
    remove_column :comments, :parent_commenter_id
  end
end
