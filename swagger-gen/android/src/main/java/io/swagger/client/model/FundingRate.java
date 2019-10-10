/**
 * Bybit API
 * ## REST API for the Bybit Exchange. 
 *
 * OpenAPI spec version: 1.0.0
 * Contact: support@bybit.com
 *
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen.git
 * Do not edit the class manually.
 */

package io.swagger.client.model;

import java.math.BigDecimal;
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

/**
 * Get the last funding Rate
 **/
@ApiModel(description = "Get the last funding Rate")
public class FundingRate {
  
  @SerializedName("symbol")
  private String symbol = null;
  @SerializedName("funding_rate")
  private String fundingRate = null;
  @SerializedName("funding_rate_timestamp")
  private BigDecimal fundingRateTimestamp = null;

  /**
   **/
  @ApiModelProperty(value = "")
  public String getSymbol() {
    return symbol;
  }
  public void setSymbol(String symbol) {
    this.symbol = symbol;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getFundingRate() {
    return fundingRate;
  }
  public void setFundingRate(String fundingRate) {
    this.fundingRate = fundingRate;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public BigDecimal getFundingRateTimestamp() {
    return fundingRateTimestamp;
  }
  public void setFundingRateTimestamp(BigDecimal fundingRateTimestamp) {
    this.fundingRateTimestamp = fundingRateTimestamp;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    FundingRate fundingRate = (FundingRate) o;
    return (this.symbol == null ? fundingRate.symbol == null : this.symbol.equals(fundingRate.symbol)) &&
        (this.fundingRate == null ? fundingRate.fundingRate == null : this.fundingRate.equals(fundingRate.fundingRate)) &&
        (this.fundingRateTimestamp == null ? fundingRate.fundingRateTimestamp == null : this.fundingRateTimestamp.equals(fundingRate.fundingRateTimestamp));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.symbol == null ? 0: this.symbol.hashCode());
    result = 31 * result + (this.fundingRate == null ? 0: this.fundingRate.hashCode());
    result = 31 * result + (this.fundingRateTimestamp == null ? 0: this.fundingRateTimestamp.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class FundingRate {\n");
    
    sb.append("  symbol: ").append(symbol).append("\n");
    sb.append("  fundingRate: ").append(fundingRate).append("\n");
    sb.append("  fundingRateTimestamp: ").append(fundingRateTimestamp).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}