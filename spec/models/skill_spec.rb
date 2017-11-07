# frozen_string_literal: true
# == Schema Information
#
# Table name: skills
#
#  id             :integer          not null, primary key
#  user_id        :integer
#  instruction_id :integer
#  level          :float
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#


require "rails_helper"

RSpec.describe Skill, type: :model do
  it { should belong_to :user }
  it { should belong_to :instruction }
end
