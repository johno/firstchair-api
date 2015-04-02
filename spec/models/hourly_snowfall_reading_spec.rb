require 'rails_helper'

RSpec.describe HourlySnowfallReading, type: :model do

  let(:hourly_snowfall_reading) { FactoryGirl.build(:hourly_snowfall_reading) }

  subject { hourly_snowfall_reading }

  it { is_expected.to be_valid }

  it { is_expected.to validate_presence_of(:hourly_snowfall_trackable) }
  it { is_expected.to validate_presence_of(:date)                     }
  it { is_expected.to validate_presence_of(:snow_water_equivalent_in) }
  it { is_expected.to validate_presence_of(:snow_depth_in)            }
end
