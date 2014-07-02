class CreateRelationships < ActiveRecord::Migration
  def change
    create_table :relationships do |t|
      t.integer :follower_id
      t.integer :followed_id

      t.timestamps
    end
    add_index :relationships, :follower_id
    add_index :relationships, :followed_id
    add_index :relationships, [:follower_id, :followed_id], unique: true # so a user can't follow someone more than once. relationship is unique
    # review what indexes are for: they're for efficiency? So DB searches don't involve looking through the whole table
  end
end
