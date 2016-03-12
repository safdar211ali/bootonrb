class CreateAngusers < ActiveRecord::Migration
  def change
    create_table :angusers do |t|

      t.timestamps
    end
  end
end
