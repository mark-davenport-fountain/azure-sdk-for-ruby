# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Appconfiguration::Mgmt::V2019_11_01_preview
  module Models
    #
    # The result of a request to list configuration store operations.
    #
    class OperationDefinitionListResult

      include MsRestAzure

      include MsRest::JSONable
      # @return [Array<OperationDefinition>] The collection value.
      attr_accessor :value

      # @return [String] The URI that can be used to request the next set of
      # paged results.
      attr_accessor :next_link

      # return [Proc] with next page method call.
      attr_accessor :next_method

      #
      # Gets the rest of the items for the request, enabling auto-pagination.
      #
      # @return [Array<OperationDefinition>] operation results.
      #
      def get_all_items
        items = @value
        page = self
        while page.next_link != nil && !page.next_link.strip.empty? do
          page = page.get_next_page
          items.concat(page.value)
        end
        items
      end

      #
      # Gets the next page of results.
      #
      # @return [OperationDefinitionListResult] with next page content.
      #
      def get_next_page
        response = @next_method.call(@next_link).value! unless @next_method.nil?
        unless response.nil?
          @next_link = response.body.next_link
          @value = response.body.value
          self
        end
      end

      #
      # Mapper for OperationDefinitionListResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'OperationDefinitionListResult',
          type: {
            name: 'Composite',
            class_name: 'OperationDefinitionListResult',
            model_properties: {
              value: {
                client_side_validation: true,
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'OperationDefinitionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'OperationDefinition'
                      }
                  }
                }
              },
              next_link: {
                client_side_validation: true,
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
