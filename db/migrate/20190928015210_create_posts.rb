class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.integer :user_id
      t.integer :list_id

      
      t.integer :post_type_id
      #still unsure how to use this(list_category) It is supposed to finesse filtering of list post type
      t.integer :list_category 
      t.text :content

    end

  end
end

#list_id is the key for the list instance
#list_type_id is the key for the kind of post, eg. grocery, meetings
#A grocery list can have an instance of an item to be purchased
#A meeting list can have an instance of an item on the agenda
#I think this schema can be further optimized
