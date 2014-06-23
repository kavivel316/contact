class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :firstname
      t.string :lastname
      t.string :emailid
      t.string :gender
      t.string :phonenumber
      t.string :photo
      t.string :address

      t.timestamps
    end
  end
end
