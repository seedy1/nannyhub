class CreateNannyJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :nanny_jobs do |t|
      t.references :user
      t.integer :payment
      t.string :duration
      t.string :starting
      t.datetime :needed
      t.text :description
      t.string :location

      t.timestamps
    end
  end
end
