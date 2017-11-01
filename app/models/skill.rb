# frozen_string_literal: true

class Skill < ApplicationRecord
  belongs_to :user
  belongs_to :instruction
end
