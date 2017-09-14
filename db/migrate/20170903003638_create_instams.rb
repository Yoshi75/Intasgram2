class CreateInstams < ActiveRecord::Migration
  def change
    create_table :instams do |t|
    t.text :content
    t.timestamps null: false
    end
  end
end
