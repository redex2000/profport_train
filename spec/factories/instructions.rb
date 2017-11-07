# frozen_string_literal: true
# == Schema Information
#
# Table name: instructions
#
#  id          :integer          not null, primary key
#  title       :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#


FactoryBot.define do
  factory :instruction do
    title "MyString"
    description "MyText"
  end
end
