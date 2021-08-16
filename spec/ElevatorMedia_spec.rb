require 'ElevatorMedia'

describe ElevatorMedia::Streamer do
    #Test if the getContent method returns a String type value
    describe "getContent" do
        streamer = ElevatorMedia::Streamer.new
        context 'method output' do
            it 'returns an HTML link' do
            expect(streamer.getContent).to be_kind_of String
            end
        end
    end
    #Test if the apiRequest method returns a JSON type value
    describe "Api Request" do
        streamer = ElevatorMedia::Streamer.new
        context 'response output' do
            it 'returns a json type data' do
            expect(streamer.apiRequest).to be_a Hash
            end
        end
    end
    require 'rails_helper'
    describe "Verify Trivia Page", type: :feature do
        context "When page renders" do
            it 'has content from ElevatorMedia' do
                visit '/trivia'
                page.find_by_id('question').tag_name
                page.find_by_id('answer').tag_name 
            end
        end
    end
end