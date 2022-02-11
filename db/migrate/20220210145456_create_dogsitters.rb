class CreateDogsitters < ActiveRecord::Migration[5.2]
  def change
    create_table :dogsitters do |t|
      t.string :ds_name
      t.belongs_to :city, index: true
      t.timestamps
    end
  end
end
