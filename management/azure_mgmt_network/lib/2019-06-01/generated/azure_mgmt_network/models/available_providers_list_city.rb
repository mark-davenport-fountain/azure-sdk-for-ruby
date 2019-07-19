# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2019_06_01
  module Models
    #
    # City or town details.
    #
    class AvailableProvidersListCity

      include MsRestAzure

      # @return [String] The city or town name.
      attr_accessor :city_name

      # @return [Array<String>] A list of Internet service providers.
      attr_accessor :providers


      #
      # Mapper for AvailableProvidersListCity class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AvailableProvidersListCity',
          type: {
            name: 'Composite',
            class_name: 'AvailableProvidersListCity',
            model_properties: {
              city_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'cityName',
                type: {
                  name: 'String'
                }
              },
              providers: {
                client_side_validation: true,
                required: false,
                serialized_name: 'providers',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
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
