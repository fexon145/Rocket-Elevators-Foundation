class Intervention < ApplicationRecord
    validates :customerID, presence: true
    validates :buildingID, presence: true

    # after_create :ticket_create_contact
    # require 'zendesk_api'

    # def ticket_create_contact
    #     client = ZendeskAPI::Client.new do |config|
    #         # Mandatory:
          
    #         config.url = "https://schooltest.zendesk.com/api/v2" # e.g. https://rocketelevator8148.zendesk.com/api/v2
          
    #         # Basic / Token Authentication
    #         config.username = "dontcanceltrial@hotmail.com"
            
          
    #         # Choose one of the following depending on your authentication choice
    #         config.token = ENV["ZENDESK_APIKEY"]
          
    #       #   # OAuth Authentication
    #       #   config.access_token = "your OAuth access token"
          
    #         # Optional:
          
    #         # Retry uses middleware to notify the user
    #         # when hitting the rate limit, sleep automatically,
    #         # then retry the request.
    #         config.retry = true
          
    #         # Raise error when hitting the rate limit.
    #         # This is ignored and always set to false when `retry` is enabled.
    #         # Disabled by default.
    #         config.raise_error_when_rate_limited = false
          
    #         # Logger prints to STDERR by default, to e.g. print to stdout:
    #         require 'logger'
    #         config.logger = Logger.new(STDOUT)
          
    #         # Disable resource cache (this is enabled by default)
    #         config.use_resource_cache = false
          
    #         # Changes Faraday adapter
    #         # config.adapter = :patron
          
    #         # Merged with the default client options hash
    #         # config.client_options = {:ssl => {:verify => false}, :request => {:timeout => 30}}
          
    #         # When getting the error 'hostname does not match the server certificate'
    #         # use the API at https://yoursubdomain.zendesk.com/api/v2
    #     end
    #     # ticket = ZendeskAPI::Ticket.new("#{client}", :id => 1, :priority => "urgent")
    #     firstname = Employee.find("#{author}").first_name
    #     lastname = Employee.find("#{author}").last_name
    #     customer = Customer.find("#{customerID}").compagny_name
    #     if employeeID == nil
    #         firstname1 = "None"
    #         lastname1 = ""
    #     else
    #         firstname1 = Employee.find("#{employeeID}").first_name
    #         lastname1 = Employee.find("#{employeeID}").last_name
    #     end

    #     puts "This is the client after creation #{client}"
    #     client.tickets.create(
    #         :subject => "Intervention", 
    #         :comment => { :value => "An intervention request has been sent. Here are the details provided by the employee:
    #         Requester: #{firstname} #{lastname}
    #         Customer: #{customer}
    #         Building ID: #{buildingID}
    #         Battery ID (if applicable): #{batteryID}
    #         Column ID (if applicable): #{columnID}
    #         Elevator ID (if applicable): #{elevatorID}
    #         Employee assigned to the task (if applicable): #{firstname1} #{lastname1}
    #         Description of the request: #{report}" }, 
    #         :submitter_id => client.current_user.id, 
    #         :type => "problem",
    #         :priority => "urgent")
    #     puts "Ticket creation?"
    #     client.tickets.save
    #     puts "Ticket saved?"
    # end
end
