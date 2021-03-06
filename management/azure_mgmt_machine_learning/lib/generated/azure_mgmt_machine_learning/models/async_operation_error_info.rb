# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.2.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::MachineLearning
  module Models
    #
    # The error detail information for async operation
    #
    class AsyncOperationErrorInfo

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] The error code.
      attr_accessor :code

      # @return [String] The error target.
      attr_accessor :target

      # @return [String] The error message.
      attr_accessor :message

      # @return [Array<AsyncOperationErrorInfo>] An array containing error
      # information.
      attr_accessor :details


      #
      # Mapper for AsyncOperationErrorInfo class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'AsyncOperationErrorInfo',
          type: {
            name: 'Composite',
            class_name: 'AsyncOperationErrorInfo',
            model_properties: {
              code: {
                required: false,
                serialized_name: 'code',
                type: {
                  name: 'String'
                }
              },
              target: {
                required: false,
                serialized_name: 'target',
                type: {
                  name: 'String'
                }
              },
              message: {
                required: false,
                serialized_name: 'message',
                type: {
                  name: 'String'
                }
              },
              details: {
                required: false,
                serialized_name: 'details',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'AsyncOperationErrorInfoElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'AsyncOperationErrorInfo'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end
