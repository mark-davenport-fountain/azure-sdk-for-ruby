# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2020_12_01
  module Models
    #
    # Specifies additional capabilities supported by the image
    #
    class VirtualMachineImageFeature

      include MsRestAzure

      # @return [String] The name of the feature.
      attr_accessor :name

      # @return [String] The corresponding value for the feature.
      attr_accessor :value


      #
      # Mapper for VirtualMachineImageFeature class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'VirtualMachineImageFeature',
          type: {
            name: 'Composite',
            class_name: 'VirtualMachineImageFeature',
            model_properties: {
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              value: {
                client_side_validation: true,
                required: false,
                serialized_name: 'value',
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
