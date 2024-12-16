class CreateUrls < ActiveRecord::Migration[7.2]
  def change
    create_table :urls do |t|
      t.string :short_url, null: false
      t.string :long_url, null: false
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
