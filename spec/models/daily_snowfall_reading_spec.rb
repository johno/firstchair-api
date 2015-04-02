require 'rails_helper'

RSpec.describe DailySnowfallReading, type: :model do

  let(:daily_snowfall_reading) { FactoryGirl.build(:daily_snowfall_reading) }

  subject { daily_snowfall_reading }

  it { is_expected.to be_valid }

  it { is_expected.to validate_presence_of(:daily_snowfall_trackable) }
  it { is_expected.to validate_presence_of(:date)                     }
  it { is_expected.to validate_presence_of(:snow_water_equivalent_in) }
  it { is_expected.to validate_presence_of(:snow_depth_in)            }
end
