FactoryGirl.define do
  factory :gadget do
    sequence(:name) { |n| "Gadget #{n}"}
  end
end