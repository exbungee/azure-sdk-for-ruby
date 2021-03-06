# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.2.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::DevTestLabs
  module Models
    #
    # Profile of a lab user.
    #
    class UserFragment < MsRestAzure::Resource

      include MsRestAzure

      include MsRest::JSONable
      # @return [UserIdentityFragment] The identity of the user.
      attr_accessor :identity

      # @return [UserSecretStoreFragment] The secret store of the user.
      attr_accessor :secret_store

      # @return [String] The provisioning status of the resource.
      attr_accessor :provisioning_state

      # @return [String] The unique immutable identifier of a resource (Guid).
      attr_accessor :unique_identifier


      #
      # Mapper for UserFragment class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'UserFragment',
          type: {
            name: 'Composite',
            class_name: 'UserFragment',
            model_properties: {
              id: {
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              location: {
                required: false,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              tags: {
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              identity: {
                required: false,
                serialized_name: 'properties.identity',
                type: {
                  name: 'Composite',
                  class_name: 'UserIdentityFragment'
                }
              },
              secret_store: {
                required: false,
                serialized_name: 'properties.secretStore',
                type: {
                  name: 'Composite',
                  class_name: 'UserSecretStoreFragment'
                }
              },
              provisioning_state: {
                required: false,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'String'
                }
              },
              unique_identifier: {
                required: false,
                serialized_name: 'properties.uniqueIdentifier',
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
