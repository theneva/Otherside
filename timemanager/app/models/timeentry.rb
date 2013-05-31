class Timeentry < ActiveRecord::Base
  attr_accessible :end_time, :start_time, :user_id
end
