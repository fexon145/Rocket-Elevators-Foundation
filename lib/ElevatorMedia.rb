require 'uri'
require 'net/http'
require 'openssl'
require 'open-uri'
require 'json'
module ElevatorMedia
    class Streamer
        def apiRequest
            url = URI("https://opentdb.com/api.php?amount=1")
            http = Net::HTTP.new(url.host, url.port)
            http.use_ssl = true
            request = Net::HTTP::Get.new(url)
            response = http.request(request)
            json_response = JSON.parse(response.body)
            return json_response

        end
        def getContent
            @trivia = self.apiRequest
            output = "<div class='text-center'>Category: #{@trivia['results'][0]['category']}</div><br>
            <div class='text-center'>Type: #{@trivia['results'][0]['type']}</div><br>
            <div id='question' class='text-center'>Question: #{@trivia['results'][0]['question']} </div><br><br>
            <div id='answer' class='text-center'>Answer: #{@trivia['results'][0]['correct_answer']}</div>"
            return output
        end
    end
end