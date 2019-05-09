FactoryBot.define do
  factory :test do
    test_customer { "MyString" }
    test_scenario { "MyString" }
    
    factory :test_with_events do
      transient do
        events_count { 3 }
      end
      
      after(:create) do |test, evaluator|
        create_list(:event, evaluator.events_count, test: test)
      end
    end
  end
end

