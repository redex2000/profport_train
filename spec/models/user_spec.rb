require 'rails_helper'

RSpec.describe User, type: :model do
  it { should have_many(:terms).through(:concepts) }
  it { should have_many(:instructions).through(:skills) }
  it { should have_many(:concepts) }
  it { should have_many(:skills) }

  it { should validate_presence_of :email }
  it { should validate_presence_of :password }
  it { should validate_uniqueness_of(:email) }
  it { should allow_value('user@profport.ru').for(:email) }
  it { should_not allow_value('user').for(:email) }
end
