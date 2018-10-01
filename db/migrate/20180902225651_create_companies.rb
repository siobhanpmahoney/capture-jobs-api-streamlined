class CreateCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :size
      t.string :location
      t.string :description
      t.string :museId
      t.string :twitter
      t.string :image_link
      t.string :image_link2
      t.string :image_mini
      t.string :company_logo
      t.string :industry

      t.timestamps
    end
  end
end
