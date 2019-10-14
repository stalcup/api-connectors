/*
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

import java.util.Objects;
import java.util.Arrays;
import com.google.gson.TypeAdapter;
import com.google.gson.annotations.JsonAdapter;
import com.google.gson.annotations.SerializedName;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.io.IOException;

/**
 * PriceFilter
 */
@javax.annotation.Generated(value = "io.swagger.codegen.languages.JavaClientCodegen", date = "2019-10-14T19:41:42.836+08:00")
public class PriceFilter {
  @SerializedName("min_price")
  private String minPrice = null;

  @SerializedName("max_price")
  private String maxPrice = null;

  @SerializedName("tick_size")
  private String tickSize = null;

  public PriceFilter minPrice(String minPrice) {
    this.minPrice = minPrice;
    return this;
  }

   /**
   * Get minPrice
   * @return minPrice
  **/
  @ApiModelProperty(value = "")
  public String getMinPrice() {
    return minPrice;
  }

  public void setMinPrice(String minPrice) {
    this.minPrice = minPrice;
  }

  public PriceFilter maxPrice(String maxPrice) {
    this.maxPrice = maxPrice;
    return this;
  }

   /**
   * Get maxPrice
   * @return maxPrice
  **/
  @ApiModelProperty(value = "")
  public String getMaxPrice() {
    return maxPrice;
  }

  public void setMaxPrice(String maxPrice) {
    this.maxPrice = maxPrice;
  }

  public PriceFilter tickSize(String tickSize) {
    this.tickSize = tickSize;
    return this;
  }

   /**
   * Get tickSize
   * @return tickSize
  **/
  @ApiModelProperty(value = "")
  public String getTickSize() {
    return tickSize;
  }

  public void setTickSize(String tickSize) {
    this.tickSize = tickSize;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    PriceFilter priceFilter = (PriceFilter) o;
    return Objects.equals(this.minPrice, priceFilter.minPrice) &&
        Objects.equals(this.maxPrice, priceFilter.maxPrice) &&
        Objects.equals(this.tickSize, priceFilter.tickSize);
  }

  @Override
  public int hashCode() {
    return Objects.hash(minPrice, maxPrice, tickSize);
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class PriceFilter {\n");
    
    sb.append("    minPrice: ").append(toIndentedString(minPrice)).append("\n");
    sb.append("    maxPrice: ").append(toIndentedString(maxPrice)).append("\n");
    sb.append("    tickSize: ").append(toIndentedString(tickSize)).append("\n");
    sb.append("}");
    return sb.toString();
  }

  /**
   * Convert the given object to string with each line indented by 4 spaces
   * (except the first line).
   */
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }

}

