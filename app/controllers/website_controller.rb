class WebsiteController < ApplicationController
  before_action :authenticate_user!, only: [:intervention]
  require "ElevatorMedia"
  def index
  end
  def residential
  end
  def commercial
  end
  def quote
  end
  def intervention
  end
  def trivia
  end
  def machineLearning
  end
end
