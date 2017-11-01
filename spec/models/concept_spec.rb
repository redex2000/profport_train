require 'rails_helper'

RSpec.describe Concept, type: :model do
  it { should belong_to(:user) }
  it { should belong_to(:term) }
  it { should validate_uniqueness_of(:user_id).scoped_to(:term_id) }
end
