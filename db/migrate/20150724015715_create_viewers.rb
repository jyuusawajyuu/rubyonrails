class CreateViewers < ActiveRecord::Migration
  def change
    create_table :viewers do |t|
      t.string :keywd

      t.timestamps null: false
    end
  end
end
