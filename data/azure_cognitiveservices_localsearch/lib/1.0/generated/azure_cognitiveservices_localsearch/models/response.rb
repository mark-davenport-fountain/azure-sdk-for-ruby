# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::LocalSearch::V1_0
  module Models
    #
    # Defines a response. All schemas that return at the root of the response
    # must inherit from this object.
    #
    class Response < Identifiable

      include MsRestAzure


      def initialize
        @_type = "Response"
      end

      attr_accessor :_type

      # @return [String] The URL that returns this resource.
      attr_accessor :read_link

      # @return [String] The URL to Bing's search result for this item.
      attr_accessor :web_search_url

      # @return [Array<Action>]
      attr_accessor :potential_action

      # @return [Array<Action>]
      attr_accessor :immediate_action

      # @return [String]
      attr_accessor :preferred_clickthrough_url

      # @return [String]
      attr_accessor :adaptive_card


      #
      # Mapper for Response class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Response',
          type: {
            name: 'Composite',
            class_name: 'Response',
            model_properties: {
              _type: {
                client_side_validation: true,
                required: true,
                serialized_name: '_type',
                type: {
                  name: 'String'
                }
              },
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              read_link: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'readLink',
                type: {
                  name: 'String'
                }
              },
              web_search_url: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'webSearchUrl',
                type: {
                  name: 'String'
                }
              },
              potential_action: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'potentialAction',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ActionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'Action'
                      }
                  }
                }
              },
              immediate_action: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'immediateAction',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ActionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'Action'
                      }
                  }
                }
              },
              preferred_clickthrough_url: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'preferredClickthroughUrl',
                type: {
                  name: 'String'
                }
              },
              adaptive_card: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'adaptiveCard',
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
