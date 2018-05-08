FactoryGirl.define do
  factory :comment do
    body RandomDate.random_paragraph
    user
    post
  end
end
