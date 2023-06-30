class CreateStarSigns < ActiveRecord::Migration[7.0]
  def change
    create_table :star_signs do |t|
      t.string :date_range
      t.string :name
      t.string :blurb
      t.string :image
      t.string :default_compatibility

      t.timestamps
    end
  end
end
