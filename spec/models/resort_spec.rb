RSpec.describe Resort, type: :model do

  let(:resort) { FactoryGirl.build(:resort) }

  subject { resort }

  it { is_expected.to be_valid }

  it { is_expected.to have_one(:weather) }
end
