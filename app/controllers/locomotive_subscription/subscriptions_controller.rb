require_dependency "locomotive_subscription/application_controller"

module LocomotiveSubscription
  class SubscriptionsController < ApplicationController

    def create
        @subscriptions = Subscription.all.where(email: params[:subscription][:email])
        if @subscriptions.count == 0
            @subscription = Subscription.create(params[:subscription])
        end
        redirect_to '/subscriptions'
    end

    def delete
        @subscription = Subscription.all.where(email: params[:subscription][:email])
        @subscription.destroy
        redirect_to '/subscriptions'
    end
  end
end
