# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.2.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::DevTestLabs
  module Models
    #
    # A virtual network.
    #
    class VirtualNetworkFragment < MsRestAzure::Resource

      include MsRestAzure

      include MsRest::JSONable
      # @return [Array<SubnetFragment>] The allowed subnets of the virtual
      # network.
      attr_accessor :allowed_subnets

      # @return [String] The description of the virtual network.
      attr_accessor :description

      # @return [String] The Microsoft.Network resource identifier of the
      # virtual network.
      attr_accessor :external_provider_resource_id

      # @return [Array<ExternalSubnetFragment>] The external subnet properties.
      attr_accessor :external_subnets

      # @return [Array<SubnetOverrideFragment>] The subnet overrides of the
      # virtual network.
      attr_accessor :subnet_overrides

      # @return [String] The provisioning status of the resource.
      attr_accessor :provisioning_state

      # @return [String] The unique immutable identifier of a resource (Guid).
      attr_accessor :unique_identifier


      #
      # Mapper for VirtualNetworkFragment class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'VirtualNetworkFragment',
          type: {
            name: 'Composite',
            class_name: 'VirtualNetworkFragment',
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
              allowed_subnets: {
                required: false,
                serialized_name: 'properties.allowedSubnets',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'SubnetFragmentElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'SubnetFragment'
                      }
                  }
                }
              },
              description: {
                required: false,
                serialized_name: 'properties.description',
                type: {
                  name: 'String'
                }
              },
              external_provider_resource_id: {
                required: false,
                serialized_name: 'properties.externalProviderResourceId',
                type: {
                  name: 'String'
                }
              },
              external_subnets: {
                required: false,
                serialized_name: 'properties.externalSubnets',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'ExternalSubnetFragmentElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ExternalSubnetFragment'
                      }
                  }
                }
              },
              subnet_overrides: {
                required: false,
                serialized_name: 'properties.subnetOverrides',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'SubnetOverrideFragmentElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'SubnetOverrideFragment'
                      }
                  }
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
