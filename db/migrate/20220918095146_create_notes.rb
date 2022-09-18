class CreateNotes < ActiveRecord::Migration[7.0]
  def change
    create_table :notes, id: :uuid do |t|
      t.string :message, null: false, default: ""
      t.string :from_user, null: false, default: ""
      t.boolean :actived, default: true
      t.timestamps
    end
  end
end
