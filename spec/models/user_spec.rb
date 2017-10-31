require 'rails_helper'

RSpec.describe User, type: :model do
  it { should have_many(:terms).through(:concepts) }
  it { should have_many(:instructions).through(:skills) }
  it { should have_many(:concepts) }
  it { should have_many(:skills) }
end
