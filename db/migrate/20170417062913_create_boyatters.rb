class CreateBoyatters < ActiveRecord::Migration
  def change
    create_table :boyatters do |t|
    t.text :conten
      t.timestamps null: false
    end
  end
end
