//
// LiqRecordsInfo.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct LiqRecordsInfo: Codable {

    public var _id: Int?
    public var qty: Int?
    public var side: String?
    public var time: Int?
    public var symbol: String?
    public var price: Int?

    public init(_id: Int?, qty: Int?, side: String?, time: Int?, symbol: String?, price: Int?) {
        self._id = _id
        self.qty = qty
        self.side = side
        self.time = time
        self.symbol = symbol
        self.price = price
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case qty
        case side
        case time
        case symbol
        case price
    }


}

