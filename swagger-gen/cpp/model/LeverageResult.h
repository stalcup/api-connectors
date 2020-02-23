/**
 * Bybit API
 * ## REST API for the Bybit Exchange. Base URI: [https://api-testnet.bybit.com]  
 *
 * OpenAPI spec version: 1.0.0
 * Contact: support@bybit.com
 *
 * NOTE: This class is auto generated by the swagger code generator 2.4.8.
 * https://github.com/swagger-api/swagger-codegen.git
 * Do not edit the class manually.
 */

/*
 * LeverageResult.h
 *
 * 
 */

#ifndef IO_SWAGGER_CLIENT_MODEL_LeverageResult_H_
#define IO_SWAGGER_CLIENT_MODEL_LeverageResult_H_


#include "../ModelBase.h"

#include "Object.h"

namespace io {
namespace swagger {
namespace client {
namespace model {

/// <summary>
/// 
/// </summary>
class  LeverageResult
    : public ModelBase
{
public:
    LeverageResult();
    virtual ~LeverageResult();

    /////////////////////////////////////////////
    /// ModelBase overrides

    void validate() override;

    web::json::value toJson() const override;
    void fromJson(web::json::value& json) override;

    void toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) const override;
    void fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) override;

    /////////////////////////////////////////////
    /// LeverageResult members

    /// <summary>
    /// 
    /// </summary>
    std::shared_ptr<Object> getBTCUSD() const;
    bool bTCUSDIsSet() const;
    void unsetBTCUSD();
    void setBTCUSD(std::shared_ptr<Object> value);
    /// <summary>
    /// 
    /// </summary>
    std::shared_ptr<Object> getEOSUSD() const;
    bool eOSUSDIsSet() const;
    void unsetEOSUSD();
    void setEOSUSD(std::shared_ptr<Object> value);
    /// <summary>
    /// 
    /// </summary>
    std::shared_ptr<Object> getETHUSD() const;
    bool eTHUSDIsSet() const;
    void unsetETHUSD();
    void setETHUSD(std::shared_ptr<Object> value);
    /// <summary>
    /// 
    /// </summary>
    std::shared_ptr<Object> getXRPUSD() const;
    bool xRPUSDIsSet() const;
    void unsetXRPUSD();
    void setXRPUSD(std::shared_ptr<Object> value);

protected:
    std::shared_ptr<Object> m_BTCUSD;
    bool m_BTCUSDIsSet;
    std::shared_ptr<Object> m_EOSUSD;
    bool m_EOSUSDIsSet;
    std::shared_ptr<Object> m_ETHUSD;
    bool m_ETHUSDIsSet;
    std::shared_ptr<Object> m_XRPUSD;
    bool m_XRPUSDIsSet;
};

}
}
}
}

#endif /* IO_SWAGGER_CLIENT_MODEL_LeverageResult_H_ */