class Weather < ActiveRecord::Base
  belongs_to :weatherable, polymorphic: true
end
