class CreateMenus < ActiveRecord::Migration[6.0]
  def change
    create_table :menus do |t|
      t.string :menu, null: false
      t.timestamps
    end
  end
end
