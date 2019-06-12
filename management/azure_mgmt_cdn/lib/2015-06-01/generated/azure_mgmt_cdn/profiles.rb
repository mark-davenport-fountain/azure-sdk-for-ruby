# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CDN::Mgmt::V2015_06_01
  #
  # Cdn Management Client
  #
  class Profiles
    include MsRestAzure

    #
    # Creates and initializes a new instance of the Profiles class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [CdnManagementClient] reference to the CdnManagementClient
    attr_reader :client

    #
    # Lists the CDN profiles within an Azure subscription.
    #
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ProfileListResult] operation results.
    #
    def list_by_subscription_id(custom_headers = nil)
      response = list_by_subscription_id_async(custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Lists the CDN profiles within an Azure subscription.
    #
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_by_subscription_id_with_http_info(custom_headers = nil)
      list_by_subscription_id_async(custom_headers).value!
    end

    #
    # Lists the CDN profiles within an Azure subscription.
    #
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_by_subscription_id_async(custom_headers = nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/providers/Microsoft.Cdn/profiles'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:get, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::CDN::Mgmt::V2015_06_01::Models::ProfileListResult.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Lists the CDN profiles within a resource group.
    #
    # @param resource_group_name [String] Name of the resource group within the
    # Azure subscription.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ProfileListResult] operation results.
    #
    def list_by_resource_group(resource_group_name, custom_headers = nil)
      response = list_by_resource_group_async(resource_group_name, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Lists the CDN profiles within a resource group.
    #
    # @param resource_group_name [String] Name of the resource group within the
    # Azure subscription.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_by_resource_group_with_http_info(resource_group_name, custom_headers = nil)
      list_by_resource_group_async(resource_group_name, custom_headers).value!
    end

    #
    # Lists the CDN profiles within a resource group.
    #
    # @param resource_group_name [String] Name of the resource group within the
    # Azure subscription.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_by_resource_group_async(resource_group_name, custom_headers = nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Cdn/profiles'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:get, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::CDN::Mgmt::V2015_06_01::Models::ProfileListResult.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Gets a CDN profile with the specified parameters.
    #
    # @param profile_name [String] Name of the CDN profile within the resource
    # group.
    # @param resource_group_name [String] Name of the resource group within the
    # Azure subscription.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Profile] operation results.
    #
    def get(profile_name, resource_group_name, custom_headers = nil)
      response = get_async(profile_name, resource_group_name, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets a CDN profile with the specified parameters.
    #
    # @param profile_name [String] Name of the CDN profile within the resource
    # group.
    # @param resource_group_name [String] Name of the resource group within the
    # Azure subscription.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_with_http_info(profile_name, resource_group_name, custom_headers = nil)
      get_async(profile_name, resource_group_name, custom_headers).value!
    end

    #
    # Gets a CDN profile with the specified parameters.
    #
    # @param profile_name [String] Name of the CDN profile within the resource
    # group.
    # @param resource_group_name [String] Name of the resource group within the
    # Azure subscription.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_async(profile_name, resource_group_name, custom_headers = nil)
      fail ArgumentError, 'profile_name is nil' if profile_name.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Cdn/profiles/{profileName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'profileName' => profile_name,'resourceGroupName' => resource_group_name,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:get, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::CDN::Mgmt::V2015_06_01::Models::Profile.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Creates a new CDN profile with the specified parameters.
    #
    # @param profile_name [String] Name of the CDN profile within the resource
    # group.
    # @param profile_properties [ProfileCreateParameters] Profile properties needed
    # for creation.
    # @param resource_group_name [String] Name of the resource group within the
    # Azure subscription.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Profile] operation results.
    #
    def create(profile_name, profile_properties, resource_group_name, custom_headers = nil)
      response = create_async(profile_name, profile_properties, resource_group_name, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # @param profile_name [String] Name of the CDN profile within the resource
    # group.
    # @param profile_properties [ProfileCreateParameters] Profile properties needed
    # for creation.
    # @param resource_group_name [String] Name of the resource group within the
    # Azure subscription.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Concurrent::Promise] promise which provides async access to http
    # response.
    #
    def create_async(profile_name, profile_properties, resource_group_name, custom_headers = nil)
      # Send request
      promise = begin_create_async(profile_name, profile_properties, resource_group_name, custom_headers)

      promise = promise.then do |response|
        # Defining deserialization method.
        deserialize_method = lambda do |parsed_response|
          result_mapper = Azure::CDN::Mgmt::V2015_06_01::Models::Profile.mapper()
          parsed_response = @client.deserialize(result_mapper, parsed_response)
        end

        # Waiting for response.
        @client.get_long_running_operation_result(response, deserialize_method)
      end

      promise
    end

    #
    # Updates an existing CDN profile with the specified parameters.
    #
    # @param profile_name [String] Name of the CDN profile within the resource
    # group.
    # @param profile_properties [ProfileUpdateParameters] Profile properties needed
    # for update.
    # @param resource_group_name [String] Name of the resource group within the
    # Azure subscription.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Profile] operation results.
    #
    def update(profile_name, profile_properties, resource_group_name, custom_headers = nil)
      response = update_async(profile_name, profile_properties, resource_group_name, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # @param profile_name [String] Name of the CDN profile within the resource
    # group.
    # @param profile_properties [ProfileUpdateParameters] Profile properties needed
    # for update.
    # @param resource_group_name [String] Name of the resource group within the
    # Azure subscription.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Concurrent::Promise] promise which provides async access to http
    # response.
    #
    def update_async(profile_name, profile_properties, resource_group_name, custom_headers = nil)
      # Send request
      promise = begin_update_async(profile_name, profile_properties, resource_group_name, custom_headers)

      promise = promise.then do |response|
        # Defining deserialization method.
        deserialize_method = lambda do |parsed_response|
          result_mapper = Azure::CDN::Mgmt::V2015_06_01::Models::Profile.mapper()
          parsed_response = @client.deserialize(result_mapper, parsed_response)
        end

        # Waiting for response.
        @client.get_long_running_operation_result(response, deserialize_method)
      end

      promise
    end

    #
    # Deletes an existing CDN profile with the specified parameters. Deleting a
    # profile will result in the deletion of all subresources including endpoints,
    # origins and custom domains.
    #
    # @param profile_name [String] Name of the CDN profile within the resource
    # group.
    # @param resource_group_name [String] Name of the resource group within the
    # Azure subscription.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    def delete_if_exists(profile_name, resource_group_name, custom_headers = nil)
      response = delete_if_exists_async(profile_name, resource_group_name, custom_headers).value!
      nil
    end

    #
    # @param profile_name [String] Name of the CDN profile within the resource
    # group.
    # @param resource_group_name [String] Name of the resource group within the
    # Azure subscription.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Concurrent::Promise] promise which provides async access to http
    # response.
    #
    def delete_if_exists_async(profile_name, resource_group_name, custom_headers = nil)
      # Send request
      promise = begin_delete_if_exists_async(profile_name, resource_group_name, custom_headers)

      promise = promise.then do |response|
        # Defining deserialization method.
        deserialize_method = lambda do |parsed_response|
        end

        # Waiting for response.
        @client.get_long_running_operation_result(response, deserialize_method)
      end

      promise
    end

    #
    # Generates a dynamic SSO URI used to sign in to the CDN Supplemental Portal
    # used for advanced management tasks, such as Country Filtering, Advanced HTTP
    # Reports, and Real-time Stats and Alerts. The SSO URI changes approximately
    # every 10 minutes.
    #
    # @param profile_name [String] Name of the CDN profile within the resource
    # group.
    # @param resource_group_name [String] Name of the resource group within the
    # Azure subscription.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [SsoUri] operation results.
    #
    def generate_sso_uri(profile_name, resource_group_name, custom_headers = nil)
      response = generate_sso_uri_async(profile_name, resource_group_name, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Generates a dynamic SSO URI used to sign in to the CDN Supplemental Portal
    # used for advanced management tasks, such as Country Filtering, Advanced HTTP
    # Reports, and Real-time Stats and Alerts. The SSO URI changes approximately
    # every 10 minutes.
    #
    # @param profile_name [String] Name of the CDN profile within the resource
    # group.
    # @param resource_group_name [String] Name of the resource group within the
    # Azure subscription.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def generate_sso_uri_with_http_info(profile_name, resource_group_name, custom_headers = nil)
      generate_sso_uri_async(profile_name, resource_group_name, custom_headers).value!
    end

    #
    # Generates a dynamic SSO URI used to sign in to the CDN Supplemental Portal
    # used for advanced management tasks, such as Country Filtering, Advanced HTTP
    # Reports, and Real-time Stats and Alerts. The SSO URI changes approximately
    # every 10 minutes.
    #
    # @param profile_name [String] Name of the CDN profile within the resource
    # group.
    # @param resource_group_name [String] Name of the resource group within the
    # Azure subscription.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def generate_sso_uri_async(profile_name, resource_group_name, custom_headers = nil)
      fail ArgumentError, 'profile_name is nil' if profile_name.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Cdn/profiles/{profileName}/generateSsoUri'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'profileName' => profile_name,'resourceGroupName' => resource_group_name,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:post, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::CDN::Mgmt::V2015_06_01::Models::SsoUri.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Creates a new CDN profile with the specified parameters.
    #
    # @param profile_name [String] Name of the CDN profile within the resource
    # group.
    # @param profile_properties [ProfileCreateParameters] Profile properties needed
    # for creation.
    # @param resource_group_name [String] Name of the resource group within the
    # Azure subscription.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Profile] operation results.
    #
    def begin_create(profile_name, profile_properties, resource_group_name, custom_headers = nil)
      response = begin_create_async(profile_name, profile_properties, resource_group_name, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Creates a new CDN profile with the specified parameters.
    #
    # @param profile_name [String] Name of the CDN profile within the resource
    # group.
    # @param profile_properties [ProfileCreateParameters] Profile properties needed
    # for creation.
    # @param resource_group_name [String] Name of the resource group within the
    # Azure subscription.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def begin_create_with_http_info(profile_name, profile_properties, resource_group_name, custom_headers = nil)
      begin_create_async(profile_name, profile_properties, resource_group_name, custom_headers).value!
    end

    #
    # Creates a new CDN profile with the specified parameters.
    #
    # @param profile_name [String] Name of the CDN profile within the resource
    # group.
    # @param profile_properties [ProfileCreateParameters] Profile properties needed
    # for creation.
    # @param resource_group_name [String] Name of the resource group within the
    # Azure subscription.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def begin_create_async(profile_name, profile_properties, resource_group_name, custom_headers = nil)
      fail ArgumentError, 'profile_name is nil' if profile_name.nil?
      fail ArgumentError, 'profile_properties is nil' if profile_properties.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Serialize Request
      request_mapper = Azure::CDN::Mgmt::V2015_06_01::Models::ProfileCreateParameters.mapper()
      request_content = @client.serialize(request_mapper,  profile_properties)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Cdn/profiles/{profileName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'profileName' => profile_name,'resourceGroupName' => resource_group_name,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => @client.api_version},
          body: request_content,
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:put, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200 || status_code == 201 || status_code == 202
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::CDN::Mgmt::V2015_06_01::Models::Profile.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end
        # Deserialize Response
        if status_code == 201
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::CDN::Mgmt::V2015_06_01::Models::Profile.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end
        # Deserialize Response
        if status_code == 202
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::CDN::Mgmt::V2015_06_01::Models::Profile.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Updates an existing CDN profile with the specified parameters.
    #
    # @param profile_name [String] Name of the CDN profile within the resource
    # group.
    # @param profile_properties [ProfileUpdateParameters] Profile properties needed
    # for update.
    # @param resource_group_name [String] Name of the resource group within the
    # Azure subscription.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Profile] operation results.
    #
    def begin_update(profile_name, profile_properties, resource_group_name, custom_headers = nil)
      response = begin_update_async(profile_name, profile_properties, resource_group_name, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Updates an existing CDN profile with the specified parameters.
    #
    # @param profile_name [String] Name of the CDN profile within the resource
    # group.
    # @param profile_properties [ProfileUpdateParameters] Profile properties needed
    # for update.
    # @param resource_group_name [String] Name of the resource group within the
    # Azure subscription.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def begin_update_with_http_info(profile_name, profile_properties, resource_group_name, custom_headers = nil)
      begin_update_async(profile_name, profile_properties, resource_group_name, custom_headers).value!
    end

    #
    # Updates an existing CDN profile with the specified parameters.
    #
    # @param profile_name [String] Name of the CDN profile within the resource
    # group.
    # @param profile_properties [ProfileUpdateParameters] Profile properties needed
    # for update.
    # @param resource_group_name [String] Name of the resource group within the
    # Azure subscription.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def begin_update_async(profile_name, profile_properties, resource_group_name, custom_headers = nil)
      fail ArgumentError, 'profile_name is nil' if profile_name.nil?
      fail ArgumentError, 'profile_properties is nil' if profile_properties.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Serialize Request
      request_mapper = Azure::CDN::Mgmt::V2015_06_01::Models::ProfileUpdateParameters.mapper()
      request_content = @client.serialize(request_mapper,  profile_properties)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Cdn/profiles/{profileName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'profileName' => profile_name,'resourceGroupName' => resource_group_name,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => @client.api_version},
          body: request_content,
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:patch, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200 || status_code == 202
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::CDN::Mgmt::V2015_06_01::Models::Profile.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end
        # Deserialize Response
        if status_code == 202
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::CDN::Mgmt::V2015_06_01::Models::Profile.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Deletes an existing CDN profile with the specified parameters. Deleting a
    # profile will result in the deletion of all subresources including endpoints,
    # origins and custom domains.
    #
    # @param profile_name [String] Name of the CDN profile within the resource
    # group.
    # @param resource_group_name [String] Name of the resource group within the
    # Azure subscription.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    #
    def begin_delete_if_exists(profile_name, resource_group_name, custom_headers = nil)
      response = begin_delete_if_exists_async(profile_name, resource_group_name, custom_headers).value!
      nil
    end

    #
    # Deletes an existing CDN profile with the specified parameters. Deleting a
    # profile will result in the deletion of all subresources including endpoints,
    # origins and custom domains.
    #
    # @param profile_name [String] Name of the CDN profile within the resource
    # group.
    # @param resource_group_name [String] Name of the resource group within the
    # Azure subscription.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def begin_delete_if_exists_with_http_info(profile_name, resource_group_name, custom_headers = nil)
      begin_delete_if_exists_async(profile_name, resource_group_name, custom_headers).value!
    end

    #
    # Deletes an existing CDN profile with the specified parameters. Deleting a
    # profile will result in the deletion of all subresources including endpoints,
    # origins and custom domains.
    #
    # @param profile_name [String] Name of the CDN profile within the resource
    # group.
    # @param resource_group_name [String] Name of the resource group within the
    # Azure subscription.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def begin_delete_if_exists_async(profile_name, resource_group_name, custom_headers = nil)
      fail ArgumentError, 'profile_name is nil' if profile_name.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Cdn/profiles/{profileName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'profileName' => profile_name,'resourceGroupName' => resource_group_name,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:delete, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 202 || status_code == 204
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?

        result
      end

      promise.execute
    end

  end
end
