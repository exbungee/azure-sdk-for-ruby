# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.1.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Compute
  #
  # Composite Swagger for Compute Client
  #
  class VirtualMachineExtensions
    include MsRestAzure

    #
    # Creates and initializes a new instance of the VirtualMachineExtensions class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [ComputeManagementClient] reference to the ComputeManagementClient
    attr_reader :client

    #
    # The operation to create or update the extension.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param vm_name [String] The name of the virtual machine where the extension
    # should be create or updated.
    # @param vm_extension_name [String] The name of the virtual machine extension.
    # @param extension_parameters [VirtualMachineExtension] Parameters supplied to
    # the Create Virtual Machine Extension operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [VirtualMachineExtension] operation results.
    #
    def create_or_update(resource_group_name, vm_name, vm_extension_name, extension_parameters, custom_headers = nil)
      response = create_or_update_async(resource_group_name, vm_name, vm_extension_name, extension_parameters, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # @param resource_group_name [String] The name of the resource group.
    # @param vm_name [String] The name of the virtual machine where the extension
    # should be create or updated.
    # @param vm_extension_name [String] The name of the virtual machine extension.
    # @param extension_parameters [VirtualMachineExtension] Parameters supplied to
    # the Create Virtual Machine Extension operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Concurrent::Promise] promise which provides async access to http
    # response.
    #
    def create_or_update_async(resource_group_name, vm_name, vm_extension_name, extension_parameters, custom_headers = nil)
      # Send request
      promise = begin_create_or_update_async(resource_group_name, vm_name, vm_extension_name, extension_parameters, custom_headers)

      promise = promise.then do |response|
        # Defining deserialization method.
        deserialize_method = lambda do |parsed_response|
          result_mapper = Azure::ARM::Compute::Models::VirtualMachineExtension.mapper()
          parsed_response = @client.deserialize(result_mapper, parsed_response, 'parsed_response')
        end

        # Waiting for response.
        @client.get_long_running_operation_result(response, deserialize_method)
      end

      promise
    end

    #
    # The operation to delete the extension.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param vm_name [String] The name of the virtual machine where the extension
    # should be deleted.
    # @param vm_extension_name [String] The name of the virtual machine extension.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [OperationStatusResponse] operation results.
    #
    def delete(resource_group_name, vm_name, vm_extension_name, custom_headers = nil)
      response = delete_async(resource_group_name, vm_name, vm_extension_name, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # @param resource_group_name [String] The name of the resource group.
    # @param vm_name [String] The name of the virtual machine where the extension
    # should be deleted.
    # @param vm_extension_name [String] The name of the virtual machine extension.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Concurrent::Promise] promise which provides async access to http
    # response.
    #
    def delete_async(resource_group_name, vm_name, vm_extension_name, custom_headers = nil)
      # Send request
      promise = begin_delete_async(resource_group_name, vm_name, vm_extension_name, custom_headers)

      promise = promise.then do |response|
        # Defining deserialization method.
        deserialize_method = lambda do |parsed_response|
          result_mapper = Azure::ARM::Compute::Models::OperationStatusResponse.mapper()
          parsed_response = @client.deserialize(result_mapper, parsed_response, 'parsed_response')
        end

        # Waiting for response.
        @client.get_long_running_operation_result(response, deserialize_method)
      end

      promise
    end

    #
    # The operation to get the extension.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param vm_name [String] The name of the virtual machine containing the
    # extension.
    # @param vm_extension_name [String] The name of the virtual machine extension.
    # @param expand [String] The expand expression to apply on the operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [VirtualMachineExtension] operation results.
    #
    def get(resource_group_name, vm_name, vm_extension_name, expand = nil, custom_headers = nil)
      response = get_async(resource_group_name, vm_name, vm_extension_name, expand, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # The operation to get the extension.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param vm_name [String] The name of the virtual machine containing the
    # extension.
    # @param vm_extension_name [String] The name of the virtual machine extension.
    # @param expand [String] The expand expression to apply on the operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_with_http_info(resource_group_name, vm_name, vm_extension_name, expand = nil, custom_headers = nil)
      get_async(resource_group_name, vm_name, vm_extension_name, expand, custom_headers).value!
    end

    #
    # The operation to get the extension.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param vm_name [String] The name of the virtual machine containing the
    # extension.
    # @param vm_extension_name [String] The name of the virtual machine extension.
    # @param expand [String] The expand expression to apply on the operation.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_async(resource_group_name, vm_name, vm_extension_name, expand = nil, custom_headers = nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'vm_name is nil' if vm_name.nil?
      fail ArgumentError, 'vm_extension_name is nil' if vm_extension_name.nil?
      api_version = '2017-03-30'
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/virtualMachines/{vmName}/extensions/{vmExtensionName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'vmName' => vm_name,'vmExtensionName' => vm_extension_name,'subscriptionId' => @client.subscription_id},
          query_params: {'$expand' => expand,'api-version' => api_version},
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
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::ARM::Compute::Models::VirtualMachineExtension.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response, 'result.body')
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # The operation to create or update the extension.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param vm_name [String] The name of the virtual machine where the extension
    # should be create or updated.
    # @param vm_extension_name [String] The name of the virtual machine extension.
    # @param extension_parameters [VirtualMachineExtension] Parameters supplied to
    # the Create Virtual Machine Extension operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [VirtualMachineExtension] operation results.
    #
    def begin_create_or_update(resource_group_name, vm_name, vm_extension_name, extension_parameters, custom_headers = nil)
      response = begin_create_or_update_async(resource_group_name, vm_name, vm_extension_name, extension_parameters, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # The operation to create or update the extension.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param vm_name [String] The name of the virtual machine where the extension
    # should be create or updated.
    # @param vm_extension_name [String] The name of the virtual machine extension.
    # @param extension_parameters [VirtualMachineExtension] Parameters supplied to
    # the Create Virtual Machine Extension operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def begin_create_or_update_with_http_info(resource_group_name, vm_name, vm_extension_name, extension_parameters, custom_headers = nil)
      begin_create_or_update_async(resource_group_name, vm_name, vm_extension_name, extension_parameters, custom_headers).value!
    end

    #
    # The operation to create or update the extension.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param vm_name [String] The name of the virtual machine where the extension
    # should be create or updated.
    # @param vm_extension_name [String] The name of the virtual machine extension.
    # @param extension_parameters [VirtualMachineExtension] Parameters supplied to
    # the Create Virtual Machine Extension operation.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def begin_create_or_update_async(resource_group_name, vm_name, vm_extension_name, extension_parameters, custom_headers = nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'vm_name is nil' if vm_name.nil?
      fail ArgumentError, 'vm_extension_name is nil' if vm_extension_name.nil?
      fail ArgumentError, 'extension_parameters is nil' if extension_parameters.nil?
      api_version = '2017-03-30'
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Serialize Request
      request_mapper = Azure::ARM::Compute::Models::VirtualMachineExtension.mapper()
      request_content = @client.serialize(request_mapper,  extension_parameters, 'extension_parameters')
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/virtualMachines/{vmName}/extensions/{vmExtensionName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'vmName' => vm_name,'vmExtensionName' => vm_extension_name,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => api_version},
          body: request_content,
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:put, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200 || status_code == 201
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::ARM::Compute::Models::VirtualMachineExtension.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response, 'result.body')
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end
        # Deserialize Response
        if status_code == 201
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::ARM::Compute::Models::VirtualMachineExtension.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response, 'result.body')
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # The operation to delete the extension.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param vm_name [String] The name of the virtual machine where the extension
    # should be deleted.
    # @param vm_extension_name [String] The name of the virtual machine extension.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [OperationStatusResponse] operation results.
    #
    def begin_delete(resource_group_name, vm_name, vm_extension_name, custom_headers = nil)
      response = begin_delete_async(resource_group_name, vm_name, vm_extension_name, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # The operation to delete the extension.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param vm_name [String] The name of the virtual machine where the extension
    # should be deleted.
    # @param vm_extension_name [String] The name of the virtual machine extension.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def begin_delete_with_http_info(resource_group_name, vm_name, vm_extension_name, custom_headers = nil)
      begin_delete_async(resource_group_name, vm_name, vm_extension_name, custom_headers).value!
    end

    #
    # The operation to delete the extension.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param vm_name [String] The name of the virtual machine where the extension
    # should be deleted.
    # @param vm_extension_name [String] The name of the virtual machine extension.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def begin_delete_async(resource_group_name, vm_name, vm_extension_name, custom_headers = nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'vm_name is nil' if vm_name.nil?
      fail ArgumentError, 'vm_extension_name is nil' if vm_extension_name.nil?
      api_version = '2017-03-30'
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/virtualMachines/{vmName}/extensions/{vmExtensionName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'vmName' => vm_name,'vmExtensionName' => vm_extension_name,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:delete, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200 || status_code == 202 || status_code == 204
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::ARM::Compute::Models::OperationStatusResponse.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response, 'result.body')
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

  end
end
