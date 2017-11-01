# frozen_string_literal: true

require "rails_helper"

RSpec.describe Skill, type: :model do
  it { should belong_to :user }
  it { should belong_to :instruction }
end
