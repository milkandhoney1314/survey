class CreateMidsurveys < ActiveRecord::Migration
  def change
    create_table :midsurveys do |t|
      t.string :name
      t.string :review

      t.timestamps
    end
  end
end
