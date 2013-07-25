module LocomotiveSubscription
  class Subscription
    include Locomotive::Mongoid::Document
    field :email, type: String
  end
end
