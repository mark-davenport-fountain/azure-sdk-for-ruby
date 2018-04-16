# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesBackup::Mgmt::V2016_12_01
  module Models
    #
    # This is used to represent the various nodes of the distributed container.
    #
    class DistributedNodesInfo

      include MsRestAzure

      # @return [String] Name of the node under a distributed container.
      attr_accessor :node_name

      # @return [String] Status of this Node.
      # Failed | Succeeded
      attr_accessor :status

      # @return [ErrorDetail] Error Details if the Status is non-success.
      attr_accessor :error_detail


      #
      # Mapper for DistributedNodesInfo class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DistributedNodesInfo',
          type: {
            name: 'Composite',
            class_name: 'DistributedNodesInfo',
            model_properties: {
              node_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'nodeName',
                type: {
                  name: 'String'
                }
              },
              status: {
                client_side_validation: true,
                required: false,
                serialized_name: 'status',
                type: {
                  name: 'String'
                }
              },
              error_detail: {
                client_side_validation: true,
                required: false,
                serialized_name: 'errorDetail',
                type: {
                  name: 'Composite',
                  class_name: 'ErrorDetail'
                }
              }
            }
          }
        }
      end
    end
  end
end