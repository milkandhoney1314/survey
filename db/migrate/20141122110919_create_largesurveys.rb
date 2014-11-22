class CreateLargesurveys < ActiveRecord::Migration
  def change
    create_table :largesurveys do |t|
      t.string :name
      t.string :review

      t.timestamps
    end
  end
end
