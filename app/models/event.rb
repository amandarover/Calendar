class Event < ActiveRecord::Base
  attr_accessor :name, :date, :hour, :description, :local, :repeating_frequency
end
