class CreateSigns < ActiveRecord::Migration[6.0]
  def change
    create_table :signs do |t|
      t.references :user, null: false, foreign_key: true
      t.references :project, foreign_key: true
      t.text :content

      t.timestamps
    end
  end
end
