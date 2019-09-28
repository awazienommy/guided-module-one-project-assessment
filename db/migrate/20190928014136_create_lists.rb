class CreateLists < ActiveRecord::Migration[5.2]
  def change
    create_table :lists do |t|
      t.string :category
      t.string :status
    end
  end
end

#status attribute will be used to update records on the file
