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


class Competence < ApplicationRecord
  # Время, через которое будем изучать компетенцию, в минутах
  STUDY_DELAY = 2

  has_many :terms
  has_many :compies
  has_many :users, through: :compies
  has_many :comments, as: :commentable

  validates :title, presence: true
  accepts_nested_attributes_for :terms, allow_destroy: true, reject_if: ->(attr) { attr["title"].blank? }

  scope :privates, -> { where(type: 'PrivateCompetence') }
  scope :professionals, -> { where(type: 'ProfessionalCompetence') }

  def learn(by_user)
    self.transaction do
      compy = Compy.create(user: by_user, competence: self)
      terms.each { |term| term.learn(by_user, compy) }
    end
    true
  end

  def self.types
    %w(PrivateCompetence ProfessionalCompetence)
  end

end
