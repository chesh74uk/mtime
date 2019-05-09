class Event
  include Mongoid::Document
  field :event_name, type: String
  field :event_date, type: Date
  field :event_outcome, type: String
  embedded_in :test, inverse_of: :events
end
