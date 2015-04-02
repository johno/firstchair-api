require 'rails_helper'

RSpec.describe Weather, type: :model do

  let(:weather) { FactoryGirl.build(:weather) }

  subject { weather }

  it { is_expected.to be_valid }

  it { is_expected.to belong_to(:weatherable) }
end
