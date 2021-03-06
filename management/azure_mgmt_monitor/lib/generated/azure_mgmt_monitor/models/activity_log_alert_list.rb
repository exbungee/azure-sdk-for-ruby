# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.2.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Monitor
  module Models
    #
    # A list of activity log alerts.
    #
    class ActivityLogAlertList

      include MsRestAzure

      include MsRest::JSONable
      # @return [Array<ActivityLogAlertResource>] The list of activity log
      # alerts.
      attr_accessor :value

      # @return [String] Provides the link to retrive the next set of elements.
      attr_accessor :next_link


      #
      # Mapper for ActivityLogAlertList class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ActivityLogAlertList',
          type: {
            name: 'Composite',
            class_name: 'ActivityLogAlertList',
            model_properties: {
              value: {
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'ActivityLogAlertResourceElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ActivityLogAlertResource'
                      }
                  }
                }
              },
              next_link: {
                required: false,
                serialized_name: 'nextLink',
                type: {
                  name: 'String'
                }
              }
            }
          }
        }
      end
    end
  end
end
