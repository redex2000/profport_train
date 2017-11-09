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


class Term < ApplicationRecord
  has_many :concepts
  has_many :users, through: :concepts
  has_many :comments, as: :commentable
  belongs_to :competence

  # Пока реализуем таким образом.
  # Можно передавать и компетенцию (если изучаем отдельно этот термин), и компетентность (если изучаем в рамках компетентности).
  def learn(by_user, compy)
    compy = Compy.create(user: by_user, competence: compy)  if compy.is_a? Competence
    concept = Concept.new term: self, user: by_user, compy: compy
    concept.save
  end
end
