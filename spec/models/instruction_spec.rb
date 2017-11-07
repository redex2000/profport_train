# frozen_string_literal: true
# == Schema Information
#
# Table name: instructions
#
#  id          :integer          not null, primary key
#  title       :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#


require "rails_helper"

RSpec.describe Instruction, type: :model do
  it { should have_many(:users).through(:skills) }
  it { should have_many(:skills) }
end
