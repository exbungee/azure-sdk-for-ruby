# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.2.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::CognitiveServices
  module Models
    #
    # The operation supported by Cognitive Services.
    #
    class OperationEntity

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] Operation name: {provider}/{resource}/{operation}.
      attr_accessor :name

      # @return [OperationDisplayInfo] The operation supported by Cognitive
      # Services.
      attr_accessor :display

      # @return [String] The origin of the operation.
      attr_accessor :origin

      # @return Additional properties.
      attr_accessor :properties


      #
      # Mapper for OperationEntity class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'OperationEntity',
          type: {
            name: 'Composite',
            class_name: 'OperationEntity',
            model_properties: {
              name: {
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              display: {
                required: false,
                serialized_name: 'display',
                type: {
                  name: 'Composite',
                  class_name: 'OperationDisplayInfo'
                }
              },
              origin: {
                required: false,
                serialized_name: 'origin',
                type: {
                  name: 'String'
                }
              },
              properties: {
                required: false,
                serialized_name: 'properties',
                type: {
                  name: 'Object'
                }
              }
            }
          }
        }
      end
    end
  end
end
