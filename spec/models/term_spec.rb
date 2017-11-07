# frozen_string_literal: true
# == Schema Information
#
# Table name: terms
#
#  id            :integer          not null, primary key
#  title         :string           not null
#  definition    :text             not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  competence_id :integer
#


require "rails_helper"

RSpec.describe Term, type: :model do
  it { should have_many(:users).through(:concepts) }
end
