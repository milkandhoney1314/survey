class CreateSmallsurveys < ActiveRecord::Migration
  def change
    create_table :smallsurveys do |t|
      t.string :name
      t.string :review

      t.timestamps
    end
  end
end
