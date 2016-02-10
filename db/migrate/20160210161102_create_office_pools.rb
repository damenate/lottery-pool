class CreateOfficePools < ActiveRecord::Migration
  def change
    create_table :office_pools do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
