require 'rails_helper'

RSpec.describe Instruction, type: :model do
  it { should have_many(:users).through(:skills) }
  it { should have_many(:skills) }
end
