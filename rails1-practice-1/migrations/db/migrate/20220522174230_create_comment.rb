class CreateComment < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
       t.string :body, null: false
       t.integer :video_id, null: false
       t.integer :commenter_id, null: false
       t.integer :parent_commenter_id

       t.timestamps
    end
      
    add_index :comments , :video_id
    add_index :comments ,:commenter_id
    add_index :comments ,:parent_commenter_id

  end
end
