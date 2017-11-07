# frozen_string_literal: true
# == Schema Information
#
# Table name: concepts
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  term_id    :integer
#  level      :float
#  created_at :datetime         not null
#  updated_at :datetime         not null
#


require "rails_helper"

RSpec.describe Concept, type: :model do
  it { should belong_to(:user) }
  it { should belong_to(:term) }
  it { should validate_uniqueness_of(:user_id).scoped_to(:term_id) }
end
