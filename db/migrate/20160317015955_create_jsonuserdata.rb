class CreateJsonuserdata < ActiveRecord::Migration
  def change
    create_table :jsonuserdata do |t|
      t.string :name
      t.string :usertype
      t.string :status

      t.timestamps
    end
  end
end
