class CarPlace < ActiveRecord::Base
  belongs_to :car
  belongs_to :place
end
