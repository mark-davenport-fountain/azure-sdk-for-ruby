# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ContainerRegistry::Mgmt::V2018_02_01_preview
  module Models
    #
    # The queue build request parameters.
    #
    class QueueBuildRequest

      include MsRestAzure

      @@discriminatorMap = Hash.new
      @@discriminatorMap["BuildTask"] = "BuildTaskBuildRequest"
      @@discriminatorMap["QuickBuild"] = "QuickBuildRequest"

      def initialize
        @type = "QueueBuildRequest"
      end

      attr_accessor :type


      #
      # Mapper for QueueBuildRequest class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'QueueBuildRequest',
          type: {
            name: 'Composite',
            polymorphic_discriminator: 'type',
            uber_parent: 'QueueBuildRequest',
            class_name: 'QueueBuildRequest',
            model_properties: {
            }
          }
        }
      end
    end
  end
end