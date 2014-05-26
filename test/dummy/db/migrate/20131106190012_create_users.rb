class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :avatar_uid
      t.string :avatar_name
      t.string :image_uid

      t.timestamps
    end
  end
end
