# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::LocalSearch::V1_0
  module Models
    #
    # Defines the top-level object that the response includes when the request
    # succeeds.
    #
    class SearchResponse < Response

      include MsRestAzure


      def initialize
        @_type = "SearchResponse"
      end

      attr_accessor :_type

      # @return [QueryContext] An object that contains the query string that
      # Bing used for the request. This object contains the query string as
      # entered by the user. It may also contain an altered query string that
      # Bing used for the query if the query string contained a spelling
      # mistake.
      attr_accessor :query_context

      # @return [Places] A list of local entities such as restaurants or hotels
      # that are relevant to the query.
      attr_accessor :places

      # @return [SearchResultsAnswer]
      attr_accessor :lottery

      # @return [Float]
      attr_accessor :search_results_confidence_score


      #
      # Mapper for SearchResponse class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SearchResponse',
          type: {
            name: 'Composite',
            class_name: 'SearchResponse',
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
              },
              query_context: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'queryContext',
                type: {
                  name: 'Composite',
                  polymorphic_discriminator: '_type',
                  uber_parent: 'QueryContext',
                  class_name: 'QueryContext'
                }
              },
              places: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'places',
                type: {
                  name: 'Composite',
                  class_name: 'Places'
                }
              },
              lottery: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'lottery',
                type: {
                  name: 'Composite',
                  class_name: 'SearchResultsAnswer'
                }
              },
              search_results_confidence_score: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'searchResultsConfidenceScore',
                type: {
                  name: 'Double'
                }
              }
            }
          }
        }
      end
    end
  end
end
