=begin
#Flagr

#Flagr is a feature flagging, A/B testing and dynamic configuration microservice. The base path for all the APIs is \"/api/v1\". 

OpenAPI spec version: 1.1.12

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.21

=end

require 'uri'

module Flagr
  class EvaluationApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # @param body evalution context
    # @param [Hash] opts the optional parameters
    # @return [EvalResult]
    def post_evaluation(body, opts = {})
      data, _status_code, _headers = post_evaluation_with_http_info(body, opts)
      data
    end

    # @param body evalution context
    # @param [Hash] opts the optional parameters
    # @return [Array<(EvalResult, Fixnum, Hash)>] EvalResult data, response status code and response headers
    def post_evaluation_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EvaluationApi.post_evaluation ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling EvaluationApi.post_evaluation"
      end
      # resource path
      local_var_path = '/evaluation'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(body)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'EvalResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EvaluationApi#post_evaluation\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # @param body evalution batch request
    # @param [Hash] opts the optional parameters
    # @return [EvaluationBatchResponse]
    def post_evaluation_batch(body, opts = {})
      data, _status_code, _headers = post_evaluation_batch_with_http_info(body, opts)
      data
    end

    # @param body evalution batch request
    # @param [Hash] opts the optional parameters
    # @return [Array<(EvaluationBatchResponse, Fixnum, Hash)>] EvaluationBatchResponse data, response status code and response headers
    def post_evaluation_batch_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EvaluationApi.post_evaluation_batch ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling EvaluationApi.post_evaluation_batch"
      end
      # resource path
      local_var_path = '/evaluation/batch'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(body)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'EvaluationBatchResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EvaluationApi#post_evaluation_batch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
