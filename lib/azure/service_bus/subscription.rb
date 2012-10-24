#-------------------------------------------------------------------------
# Copyright (c) Microsoft. All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#--------------------------------------------------------------------------
require 'azure/service_bus/resource'

module Azure
  module ServiceBus
    class Subscription < Resource
      
      attr_accessor :topic

      # LockDuration: XML datetime
      #
      # The default lock duration is applied to subscriptions that do not define a lock duration. Settable only at
      # subscription creation time:
      #
      # Range: 0 – 5 minutes. 0 means that the message is not locked
      # Default: 30 seconds
      def lock_duration
        to_interval description['LockDuration']
      end

      def lock_duration=(val)
        _set 'LockDuration', val
      end

      # RequiresSession: True, False
      #
      # Settable only at subscription creation time. If set to true, the subscription will be session-aware and only
      # SessionReceiver will be supported. Session-aware subscription are not supported through REST.
      #
      # Default: false
      def requires_session
        to_bool description['RequiresSession']
      end

      def requires_session=(val)
        _set 'RequiresSession', val
      end

      # DefaultMessageTimeToLive: PTnHnMnS
      #
      # Determines how long a message lives in the subscription. Based on whether dead-lettering is enabled, a message
      # whose TTL has expired will either be moved to the subscription’s associated DeadLtterQueue or permanently
      # deleted.
      #
      # Range: 1 second – TimeSpan.MaxValue
      # Default: TimeSpan.MaxValue if the topic also does not specify a TTL. Otherwise the setting from topic is inherited.
      def default_message_ttl
        to_interval description['DefaultMessageTimeToLive']
      end

      def default_message_ttl=(val)
        _set 'DefaultMessageTimeToLive', val
      end

      # DeadLetteringOnMessageExpiration: True, False
      #
      # This field controls how the Service Bus handles a message whose TTL has expired. If it is enabled and a message
      # expires, the Service Bus moves the message from the queue into the subscription’s dead-letter sub-queue. If
      # disabled, message will be permanently deleted from the subscription’s main queue. Settable only at subscription
      # creation time.
      #
      # Default: false
      def dead_lettering_on_message_expiration
        to_bool description['DeadLetteringOnMessageExpiration']
      end

      def dead_lettering_on_message_expiration=(val)
        _set 'DeadLetteringOnMessageExpiration', val
      end

      # DeadLetteringOnFilterEvaluationExceptions: True, False
      #
      # Determines how the Service Bus handles a message that causes an exception during a subscription’s filter
      # evaluation. If the value is set to true, the message that caused the exception will be moved to the
      # subscription’s dead-letter queue. Otherwise, it will be discarded. By default this parameter is set to true,
      # allowing the user a chance to investigate the cause of the exception. It can occur from a malformed message or
      # some incorrect assumptions being made in the filter about the form of the message. Settable only at topic
      # creation time.
      #
      # Default: true
      def dead_lettering_on_message_expiration
        to_bool description['DeadLetteringOnMessageExpiration']
      end

      def dead_lettering_on_message_expiration=(val)
        _set 'DeadLetteringOnMessageExpiration', val
      end

      # EnableBatchedOperations
      #
      # Enables or disables service side batching behavior when performing operations for the specific queue. When
      # enabled, service bus will collect/batch multiple operations to the backend to be more connection efficient. If
      # user wants lower operation latency then they can disable this feature.
      def enable_batched_operations
        to_bool description['EnableBatchedOperations']
      end

      def enable_batched_operations=(val)
        _set 'EnableBatchedOperations', val
      end

      # MaxDeliveryCount
      #
      # The maximum number of times a message SB will try to deliver before being dead lettered or discarded.
      def max_delivery_count
        to_i description['MaxDeliveryCount']
      end

      def max_delivery_count=(val)
        _set 'MaxDeliveryCount', val
      end

      # MessageCount
      #
      # Reports the number of messages in the queue as reported by the monitoring system.
      def message_count
        to_i description['MessageCount']
      end

      def message_count=(val)
        _set 'MessageCount', val
      end

      def ordered_props
        [
          "LockDuration",
          "RequiresSession",
          "DefaultMessageTimeToLive",
          "DeadLetteringOnMessageExpiration",
          "DeadLetteringOnFilterEvaluationExceptions"
        ]
      end
    end
  end
end