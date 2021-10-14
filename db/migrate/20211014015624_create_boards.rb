class CreateBoards < ActiveRecord::Migration[6.0]
  def change
    create_table :boards do |t|
      t.string :game_title, null: false
      t.string :text,       null: false
      t.references :user
      t.timestamps
    end
  end
end
