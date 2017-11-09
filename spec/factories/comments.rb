FactoryBot.define do
  factory :comment do
    author nil
    commentable_id 1
    commentable_type "MyString"
    content "MyText"
  end
end
