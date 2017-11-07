# frozen_string_literal: true
# == Schema Information
#
# Table name: competences
#
#  id          :integer          not null, primary key
#  title       :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#


require "rails_helper"

RSpec.describe Competence, type: :model do
  it { should validate_presence_of :title }
end
