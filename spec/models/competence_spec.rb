require 'rails_helper'

RSpec.describe Competence, type: :model do
  it { should validate_presence_of :title }
end
