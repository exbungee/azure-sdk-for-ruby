# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.2.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Logic
  module Models
    #
    # The access key regenerate action content.
    #
    class RegenerateActionParameter

      include MsRestAzure

      include MsRest::JSONable
      # @return [KeyType] The key type. Possible values include:
      # 'NotSpecified', 'Primary', 'Secondary'
      attr_accessor :key_type


      #
      # Mapper for RegenerateActionParameter class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'RegenerateActionParameter',
          type: {
            name: 'Composite',
            class_name: 'RegenerateActionParameter',
            model_properties: {
              key_type: {
                required: false,
                serialized_name: 'keyType',
                type: {
                  name: 'Enum',
                  module: 'KeyType'
                }
              }
            }
          }
        }
      end
    end
  end
end
