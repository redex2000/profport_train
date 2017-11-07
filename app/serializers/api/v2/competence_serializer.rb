class Api::V2::CompetenceSerializer < Api::CompetenceSerializer
  attributes :description

  has_many :terms
end
