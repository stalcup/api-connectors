//
// LinearSwitchModeResult.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct LinearSwitchModeResult: Codable {

    public var tpSlMode: Double?

    public init(tpSlMode: Double?) {
        self.tpSlMode = tpSlMode
    }

    public enum CodingKeys: String, CodingKey { 
        case tpSlMode = "tp_sl_mode"
    }


}

