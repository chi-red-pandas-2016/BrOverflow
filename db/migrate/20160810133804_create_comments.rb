class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer  :user_id, null: false
      t.text     :text, null: false
      t.references :commentable, polymorphic: true

      t.timestamps(null: false)
    end
  end
end
