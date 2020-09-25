class CreateDiagnoses < ActiveRecord::Migration[6.0]
  def change
    create_table :diagnoses do |t|
      t.integer    :diagnosis, null: false
      t.references :user, foreign_key: true
      t.references :menu, foreign_key: true
      t.timestamps
    end
  end
end
