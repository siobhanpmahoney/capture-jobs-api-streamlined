class CreateBookmarks < ActiveRecord::Migration[5.2]
  def change
    create_table :bookmarks do |t|
      t.string :title
      t.string :source_name
      t.text :summary
      t.string :url

      t.timestamps
    end
  end
end
