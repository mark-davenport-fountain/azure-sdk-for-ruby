# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesBackup::Mgmt::V2016_12_01
  module Models
    #
    # The query filters that can be used with the list containers API.
    #
    class BMSContainerQueryObject

      include MsRestAzure

      # @return [BackupManagementType] Backup management type for this
      # container. Possible values include: 'Invalid', 'AzureIaasVM', 'MAB',
      # 'DPM', 'AzureBackupServer', 'AzureSql'
      attr_accessor :backup_management_type

      # @return [ContainerType] Type of container for filter. Possible values
      # include: 'Invalid', 'Unknown', 'IaasVMContainer',
      # 'IaasVMServiceContainer', 'DPMContainer', 'AzureBackupServerContainer',
      # 'MABContainer', 'Cluster', 'AzureSqlContainer', 'Windows', 'VCenter'
      attr_accessor :container_type

      # @return [String] Backup engine name
      attr_accessor :backup_engine_name

      # @return [String] Status of registration of this container with the
      # Recovery Services Vault.
      attr_accessor :status

      # @return [String] Friendly name of this container.
      attr_accessor :friendly_name


      #
      # Mapper for BMSContainerQueryObject class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'BMSContainerQueryObject',
          type: {
            name: 'Composite',
            class_name: 'BMSContainerQueryObject',
            model_properties: {
              backup_management_type: {
                required: true,
                serialized_name: 'backupManagementType',
                type: {
                  name: 'String'
                }
              },
              container_type: {
                required: false,
                serialized_name: 'containerType',
                type: {
                  name: 'String'
                }
              },
              backup_engine_name: {
                required: false,
                serialized_name: 'backupEngineName',
                type: {
                  name: 'String'
                }
              },
              status: {
                required: false,
                serialized_name: 'status',
                type: {
                  name: 'String'
                }
              },
              friendly_name: {
                required: false,
                serialized_name: 'friendlyName',
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