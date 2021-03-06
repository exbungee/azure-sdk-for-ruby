# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.2.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Monitor
  module Models
    #
    # A rule that provide the triggers and parameters for the scaling action.
    #
    class ScaleRule

      include MsRestAzure

      include MsRest::JSONable
      # @return [MetricTrigger] the trigger that results in a scaling action.
      attr_accessor :metric_trigger

      # @return [ScaleAction] the parameters for the scaling action.
      attr_accessor :scale_action


      #
      # Mapper for ScaleRule class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ScaleRule',
          type: {
            name: 'Composite',
            class_name: 'ScaleRule',
            model_properties: {
              metric_trigger: {
                required: true,
                serialized_name: 'metricTrigger',
                type: {
                  name: 'Composite',
                  class_name: 'MetricTrigger'
                }
              },
              scale_action: {
                required: true,
                serialized_name: 'scaleAction',
                type: {
                  name: 'Composite',
                  class_name: 'ScaleAction'
                }
              }
            }
          }
        }
      end
    end
  end
end
