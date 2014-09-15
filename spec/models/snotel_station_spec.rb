RSpec.describe SnotelStation, type: :model do

  let(:snotel_station) { FactoryGirl.build(:snotel_station) }

  subject { snotel_station }

  it { should be_valid }

  it { should have_one(:weather) }
end
