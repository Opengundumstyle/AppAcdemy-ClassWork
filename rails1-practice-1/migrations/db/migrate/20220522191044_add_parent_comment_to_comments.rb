class AddParentCommentToComments < ActiveRecord::Migration[5.2]
  def change
      add_column :comments, :parent_comment_id, :integer, null:false
    end

    
end
