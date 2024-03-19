class CreateButtons < ActiveRecord::Migration[7.1]
  def change
    create_table :buttons do |t|
      t.boolean :clicked
      t.timestamp :clicked_at

      t.timestamps
    end
  end
end
