/**
 * Bybit API
 * ## REST API for the Bybit Exchange. Base URI: [https://api.bybit.com]  
 *
 * OpenAPI spec version: 0.2.10
 * Contact: support@bybit.com
 *
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen.git
 *
 * Swagger Codegen version: 2.4.8
 *
 * Do not edit the class manually.
 *
 */

(function(root, factory) {
  if (typeof define === 'function' && define.amd) {
    // AMD. Register as an anonymous module.
    define(['ApiClient'], factory);
  } else if (typeof module === 'object' && module.exports) {
    // CommonJS-like environments that support module.exports, like Node.
    module.exports = factory(require('../ApiClient'));
  } else {
    // Browser globals (root is window)
    if (!root.BybitApi) {
      root.BybitApi = {};
    }
    root.BybitApi.LinearPrevFundingRateResp = factory(root.BybitApi.ApiClient);
  }
}(this, function(ApiClient) {
  'use strict';




  /**
   * The LinearPrevFundingRateResp model module.
   * @module model/LinearPrevFundingRateResp
   * @version 0.2.10
   */

  /**
   * Constructs a new <code>LinearPrevFundingRateResp</code>.
   * @alias module:model/LinearPrevFundingRateResp
   * @class
   */
  var exports = function() {
    var _this = this;




  };

  /**
   * Constructs a <code>LinearPrevFundingRateResp</code> from a plain JavaScript object, optionally creating a new instance.
   * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
   * @param {Object} data The plain JavaScript object bearing properties of interest.
   * @param {module:model/LinearPrevFundingRateResp} obj Optional instance to populate.
   * @return {module:model/LinearPrevFundingRateResp} The populated <code>LinearPrevFundingRateResp</code> instance.
   */
  exports.constructFromObject = function(data, obj) {
    if (data) {
      obj = obj || new exports();

      if (data.hasOwnProperty('funding_rate')) {
        obj['funding_rate'] = ApiClient.convertToType(data['funding_rate'], 'Number');
      }
      if (data.hasOwnProperty('funding_rate_timestamp')) {
        obj['funding_rate_timestamp'] = ApiClient.convertToType(data['funding_rate_timestamp'], 'String');
      }
      if (data.hasOwnProperty('symbol')) {
        obj['symbol'] = ApiClient.convertToType(data['symbol'], 'String');
      }
    }
    return obj;
  }

  /**
   * @member {Number} funding_rate
   */
  exports.prototype['funding_rate'] = undefined;
  /**
   * @member {String} funding_rate_timestamp
   */
  exports.prototype['funding_rate_timestamp'] = undefined;
  /**
   * @member {String} symbol
   */
  exports.prototype['symbol'] = undefined;



  return exports;
}));


