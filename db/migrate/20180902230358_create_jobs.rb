class CreateJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :jobs do |t|
      t.string :title
      t.datetime :date_published
      t.text :contents
      t.integer :museId
      t.string :location
      t.string :level
      t.string :category
      t.datetime :date_saved
      t.boolean :overall_active_status
      t.datetime :date_applied
      t.string :application_response_status
      t.string :interview_invite
      t.string :offer_status
      t.belongs_to :user
      t.belongs_to :company

      t.timestamps
    end
  end
end
