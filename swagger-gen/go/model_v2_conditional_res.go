/*
 * Bybit API
 *
 * ## REST API for the Bybit Exchange. Base URI: [https://api.bybit.com]  
 *
 * API version: 0.2.10
 * Contact: support@bybit.com
 * Generated by: Swagger Codegen (https://github.com/swagger-api/swagger-codegen.git)
 */

package swagger

// Place new conditional order response
type V2ConditionalRes struct {
	UserId float32 `json:"user_id,omitempty"`
	Symbol string `json:"symbol,omitempty"`
	Side string `json:"side,omitempty"`
	OrderType string `json:"order_type,omitempty"`
	Price string `json:"price,omitempty"`
	Qty string `json:"qty,omitempty"`
	TimeInForce string `json:"time_in_force,omitempty"`
	TriggerBy string `json:"trigger_by,omitempty"`
	BasePrice string `json:"base_price,omitempty"`
	Remark string `json:"remark,omitempty"`
	RejectReason string `json:"reject_reason,omitempty"`
	StopPx string `json:"stop_px,omitempty"`
	StopOrderId string `json:"stop_order_id,omitempty"`
	OrderLinkId string `json:"order_link_id,omitempty"`
	CreatedAt string `json:"created_at,omitempty"`
	UpdatedAt string `json:"updated_at,omitempty"`
}
