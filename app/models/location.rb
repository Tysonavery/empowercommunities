class Location < ActiveRecord::Base
  # Each location has a channel and a state
  belongs_to :channel
  belongs_to :state
end
