class Scenario
  include Mongoid::Document

  field :scenario_name, type: String
  field :scenario_description, type: String
  field :scenario_date, type: Date
end
