class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string      :title
      t.string      :description
      t.references  :jobposting, index: true, foreign_key: true


      t.timestamps null: false
    end
  end
end
