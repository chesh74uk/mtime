class Test
  include Mongoid::Document
  field :test_customer, type: String
  field :test_scenario, type: String
  embeds_many :events
  accepts_nested_attributes_for :events
end
