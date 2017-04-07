class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.references :user, foreign_key: true
      t.references :topic, foreign_key: true
      t.string :title
      t.text :description
      t.datetime :time
      t.string :host

      t.timestamps
    end
  end
end
