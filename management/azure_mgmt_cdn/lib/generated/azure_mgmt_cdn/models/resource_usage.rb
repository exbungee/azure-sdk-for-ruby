# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.2.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::CDN
  module Models
    #
    # Output of check resource usage API.
    #
    class ResourceUsage

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] Resource type of the usages.
      attr_accessor :resource_type

      # @return [String] Unit of the usage. e.g. Count.
      attr_accessor :unit

      # @return [Integer] Actual value of the resource type.
      attr_accessor :current_value

      # @return [Integer] Quota of the resource type.
      attr_accessor :limit


      #
      # Mapper for ResourceUsage class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ResourceUsage',
          type: {
            name: 'Composite',
            class_name: 'ResourceUsage',
            model_properties: {
              resource_type: {
                required: false,
                serialized_name: 'resourceType',
                type: {
                  name: 'String'
                }
              },
              unit: {
                required: false,
                serialized_name: 'unit',
                type: {
                  name: 'String'
                }
              },
              current_value: {
                required: false,
                serialized_name: 'currentValue',
                type: {
                  name: 'Number'
                }
              },
              limit: {
                required: false,
                serialized_name: 'limit',
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end
