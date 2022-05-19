class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.text :reply
      t.belongs_to :meeting, null: false, foreign_key: true

      t.timestamps
    end
  end
end
