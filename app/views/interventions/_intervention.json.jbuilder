json.extract! intervention, :id, :author, :customerID, :buildingID, :batteryID, :columnID, :elevatorID, :employeeID, :start_date_and_time_of_the_intervention, :end_date_and_time_of_the_intervention, :result, :report, :status, :created_at, :updated_at
json.url intervention_url(intervention, format: :json)
