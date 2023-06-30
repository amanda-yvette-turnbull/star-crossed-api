class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :auth0_id
      t.string :name
      t.integer :age
      t.string :email
      t.string :gender
      t.string :preference
      t.string :bio
      t.string :birthday
      t.string :image
      t.references :star_sign
      t.string :matches
      t.string :compatibility

      t.timestamps
    end
  end
end
