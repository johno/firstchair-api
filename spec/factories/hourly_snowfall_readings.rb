# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :hourly_snowfall_reading do
    date "2014-09-30 22:11:12"
    snow_water_equivalent_in 1.5
    change_in_snow_water_equivalent_in 1.5
    snow_depth_in 1.5
    change_in_snow_depth_in 1.5
    hourly_snowfall_trackable_id 1
    hourly_snowfall_trackable_type "MyString"
  end
end
