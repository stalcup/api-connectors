=begin
#Bybit API

### REST API for the Bybit Exchange. 

OpenAPI spec version: 1.0.0
Contact: support@bybit.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.8

=end

require 'uri'

module SwaggerClient
  class OrderApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get my active order list.
    # @param order_id Order ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :symbol Contract type.
    # @return [Object]
    def order_cancel(order_id, opts = {})
      data, _status_code, _headers = order_cancel_with_http_info(order_id, opts)
      data
    end

    # Get my active order list.
    # @param order_id Order ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :symbol Contract type.
    # @return [Array<(Object, Fixnum, Hash)>] Object data, response status code and response headers
    def order_cancel_with_http_info(order_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrderApi.order_cancel ...'
      end
      # verify the required parameter 'order_id' is set
      if @api_client.config.client_side_validation && order_id.nil?
        fail ArgumentError, "Missing the required parameter 'order_id' when calling OrderApi.order_cancel"
      end
      # resource path
      local_var_path = '/open-api/order/cancel'

      # query parameters
      query_params = {}
      query_params[:'order_id'] = order_id
      query_params[:'symbol'] = opts[:'symbol'] if !opts[:'symbol'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'application/x-www-form-urlencoded'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Object')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrderApi#order_cancel\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get my active order list.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :order_id Order ID
    # @option opts [String] :order_link_id Customized order ID.
    # @option opts [String] :symbol Contract type. Default BTCUSD
    # @option opts [String] :order Sort orders by creation date
    # @option opts [Float] :page Page. Default getting first page data
    # @option opts [Float] :limit TLimit for data size per page, max size is 50. Default as showing 20 pieces of data per page
    # @option opts [String] :order_status Query your orders for all statuses if &#39;order_status&#39; is empty. If you want to query orders with specific statuses , you can pass the order_status split by
    # @return [Object]
    def order_get_orders(opts = {})
      data, _status_code, _headers = order_get_orders_with_http_info(opts)
      data
    end

    # Get my active order list.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :order_id Order ID
    # @option opts [String] :order_link_id Customized order ID.
    # @option opts [String] :symbol Contract type. Default BTCUSD
    # @option opts [String] :order Sort orders by creation date
    # @option opts [Float] :page Page. Default getting first page data
    # @option opts [Float] :limit TLimit for data size per page, max size is 50. Default as showing 20 pieces of data per page
    # @option opts [String] :order_status Query your orders for all statuses if &#39;order_status&#39; is empty. If you want to query orders with specific statuses , you can pass the order_status split by
    # @return [Array<(Object, Fixnum, Hash)>] Object data, response status code and response headers
    def order_get_orders_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrderApi.order_get_orders ...'
      end
      # resource path
      local_var_path = '/open-api/order/list'

      # query parameters
      query_params = {}
      query_params[:'order_id'] = opts[:'order_id'] if !opts[:'order_id'].nil?
      query_params[:'order_link_id'] = opts[:'order_link_id'] if !opts[:'order_link_id'].nil?
      query_params[:'symbol'] = opts[:'symbol'] if !opts[:'symbol'].nil?
      query_params[:'order'] = opts[:'order'] if !opts[:'order'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'order_status'] = opts[:'order_status'] if !opts[:'order_status'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'application/x-www-form-urlencoded'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Object')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrderApi#order_get_orders\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Place active order
    # @param side Side
    # @param symbol Contract type.
    # @param order_type Active order type
    # @param qty 
    # @param price Order price.
    # @param time_in_force Time in force
    # @param [Hash] opts the optional parameters
    # @option opts [Float] :take_profit take profit price
    # @option opts [Float] :stop_loss stop loss price
    # @option opts [BOOLEAN] :reduce_only reduce only
    # @option opts [BOOLEAN] :close_on_trigger close on trigger
    # @option opts [String] :order_link_id TCustomized order ID, maximum length at 36 characters, and order ID under the same agency has to be unique.
    # @return [Object]
    def order_new(side, symbol, order_type, qty, price, time_in_force, opts = {})
      data, _status_code, _headers = order_new_with_http_info(side, symbol, order_type, qty, price, time_in_force, opts)
      data
    end

    # Place active order
    # @param side Side
    # @param symbol Contract type.
    # @param order_type Active order type
    # @param qty 
    # @param price Order price.
    # @param time_in_force Time in force
    # @param [Hash] opts the optional parameters
    # @option opts [Float] :take_profit take profit price
    # @option opts [Float] :stop_loss stop loss price
    # @option opts [BOOLEAN] :reduce_only reduce only
    # @option opts [BOOLEAN] :close_on_trigger close on trigger
    # @option opts [String] :order_link_id TCustomized order ID, maximum length at 36 characters, and order ID under the same agency has to be unique.
    # @return [Array<(Object, Fixnum, Hash)>] Object data, response status code and response headers
    def order_new_with_http_info(side, symbol, order_type, qty, price, time_in_force, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrderApi.order_new ...'
      end
      # verify the required parameter 'side' is set
      if @api_client.config.client_side_validation && side.nil?
        fail ArgumentError, "Missing the required parameter 'side' when calling OrderApi.order_new"
      end
      # verify the required parameter 'symbol' is set
      if @api_client.config.client_side_validation && symbol.nil?
        fail ArgumentError, "Missing the required parameter 'symbol' when calling OrderApi.order_new"
      end
      # verify the required parameter 'order_type' is set
      if @api_client.config.client_side_validation && order_type.nil?
        fail ArgumentError, "Missing the required parameter 'order_type' when calling OrderApi.order_new"
      end
      # verify the required parameter 'qty' is set
      if @api_client.config.client_side_validation && qty.nil?
        fail ArgumentError, "Missing the required parameter 'qty' when calling OrderApi.order_new"
      end
      # verify the required parameter 'price' is set
      if @api_client.config.client_side_validation && price.nil?
        fail ArgumentError, "Missing the required parameter 'price' when calling OrderApi.order_new"
      end
      # verify the required parameter 'time_in_force' is set
      if @api_client.config.client_side_validation && time_in_force.nil?
        fail ArgumentError, "Missing the required parameter 'time_in_force' when calling OrderApi.order_new"
      end
      # resource path
      local_var_path = '/open-api/order/create'

      # query parameters
      query_params = {}
      query_params[:'side'] = side
      query_params[:'symbol'] = symbol
      query_params[:'order_type'] = order_type
      query_params[:'qty'] = qty
      query_params[:'price'] = price
      query_params[:'time_in_force'] = time_in_force
      query_params[:'take_profit'] = opts[:'take_profit'] if !opts[:'take_profit'].nil?
      query_params[:'stop_loss'] = opts[:'stop_loss'] if !opts[:'stop_loss'].nil?
      query_params[:'reduce_only'] = opts[:'reduce_only'] if !opts[:'reduce_only'].nil?
      query_params[:'close_on_trigger'] = opts[:'close_on_trigger'] if !opts[:'close_on_trigger'].nil?
      query_params[:'order_link_id'] = opts[:'order_link_id'] if !opts[:'order_link_id'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'application/x-www-form-urlencoded'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Object')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrderApi#order_new\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Replace active order. Only incomplete orders can be modified. 
    # @param order_id Order ID.
    # @param symbol Contract type.
    # @param [Hash] opts the optional parameters
    # @option opts [Float] :p_r_qty Order quantity.
    # @option opts [Float] :p_r_price Order price.
    # @return [Object]
    def order_replace(order_id, symbol, opts = {})
      data, _status_code, _headers = order_replace_with_http_info(order_id, symbol, opts)
      data
    end

    # Replace active order. Only incomplete orders can be modified. 
    # @param order_id Order ID.
    # @param symbol Contract type.
    # @param [Hash] opts the optional parameters
    # @option opts [Float] :p_r_qty Order quantity.
    # @option opts [Float] :p_r_price Order price.
    # @return [Array<(Object, Fixnum, Hash)>] Object data, response status code and response headers
    def order_replace_with_http_info(order_id, symbol, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrderApi.order_replace ...'
      end
      # verify the required parameter 'order_id' is set
      if @api_client.config.client_side_validation && order_id.nil?
        fail ArgumentError, "Missing the required parameter 'order_id' when calling OrderApi.order_replace"
      end
      # verify the required parameter 'symbol' is set
      if @api_client.config.client_side_validation && symbol.nil?
        fail ArgumentError, "Missing the required parameter 'symbol' when calling OrderApi.order_replace"
      end
      # resource path
      local_var_path = '/open-api/order/replace'

      # query parameters
      query_params = {}
      query_params[:'order_id'] = order_id
      query_params[:'symbol'] = symbol
      query_params[:'p_r_qty'] = opts[:'p_r_qty'] if !opts[:'p_r_qty'].nil?
      query_params[:'p_r_price'] = opts[:'p_r_price'] if !opts[:'p_r_price'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'application/x-www-form-urlencoded'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['apiKey', 'apiSignature']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Object')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrderApi#order_replace\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
