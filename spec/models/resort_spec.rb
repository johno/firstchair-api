RSpec.describe Resort, type: :model do

  let(:resort) { FactoryGirl.build(:resort) }

  subject { resort }

  it { should be_valid }

  it { should have_one(:weather) }
end
