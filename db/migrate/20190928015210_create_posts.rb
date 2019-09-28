class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.integer :user_id
      t.integer :list_id

      
      t.integer :entry_type_id
      t.integer :list_type_id
    end

  end
end

#list_id is the key for the list instance
#list_type_id is the key for the kind of post, eg. grocery, meetings
#A grocery list can have an instance of an item to be purchased
#A meeting list can have an instance of an item on the agenda
#I think this schema can be further optimized
