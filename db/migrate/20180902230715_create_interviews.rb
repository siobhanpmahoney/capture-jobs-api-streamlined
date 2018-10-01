class CreateInterviews < ActiveRecord::Migration[5.2]
  def change
    create_table :interviews do |t|
      t.string :type
      t.string :contact
      t.datetime :date_invited
      t.datetime :date_due
      t.string :next_step
      t.string :response
      t.string :additional_notes
      t.belongs_to :job

      t.timestamps
    end
  end
end
