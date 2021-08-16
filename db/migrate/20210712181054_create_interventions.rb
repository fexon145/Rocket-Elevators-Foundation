class CreateInterventions < ActiveRecord::Migration[5.2]
  def change
    create_table :interventions do |t|
      t.numeric :author
      t.numeric :customerID
      t.numeric :buildingID
      t.numeric :batteryID
      t.numeric :columnID
      t.numeric :elevatorID
      t.numeric :employeeID
      t.datetime :start_date_and_time_of_the_intervention
      t.datetime :end_date_and_time_of_the_intervention
      t.string :result
      t.string :report
      t.string :status

      t.timestamps
    end
  end
end
