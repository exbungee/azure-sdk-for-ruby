# #-------------------------------------------------------------------------
# # Copyright (c) Microsoft. All rights reserved.
# #
# # Licensed under the Apache License, Version 2.0 (the "License");
# # you may not use this file except in compliance with the License.
# # You may obtain a copy of the License at
# #   http://www.apache.org/licenses/LICENSE-2.0
# #
# # Unless required by applicable law or agreed to in writing, software
# # distributed under the License is distributed on an "AS IS" BASIS,
# # WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# # See the License for the specific language governing permissions and
# # limitations under the License.
# #--------------------------------------------------------------------------
# require "integration/test_helper"

# describe "Creating a Subscription" do
#   before do
#     @topic = Azure::ServiceBus::Topics.create(ServiceBusTopicNameHelper.name, {})
#   end

#   after do
#     ServiceBusTopicNameHelper.clean
#   end

#   it "should be able to create a new subscription" do
#     subscription = @topic.subscriptions.create("subscription-name")
#     subscription.must_be_kind_of Azure::ServiceBus::Subscriptions::Subscription
#     assert subscription.valid?
#   end

#   it "can create a subscription with extra parameters" do
#     subscription = @topic.subscriptions.create("subscription-name") do |sub|
#       sub.default_ttl = 75
#     end

#     subscription.default_ttl.must_equal 75
#   end
# end
