//
//  BloodPressureMessageKeys.swift
//  FitDataProtocol
//
//  Created by Kevin Hoogheem on 8/18/18.
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.

import Foundation
import AntMessageProtocol
import FitnessUnits

@available(swift 4.2)
@available(iOS 10.0, tvOS 10.0, watchOS 3.0, OSX 10.12, *)
extension BloodPressureMessage: FitMessageKeys {
    /// CodingKeys for FIT Message Type
    public typealias FitCodingKeys = MessageKeys

    /// FIT Message Keys
    public enum MessageKeys: Int, CodingKey, CaseIterable {
        /// Timestamp
        case timestamp              = 253

        /// Systolic Pressure
        case systolicPressure       = 0
        /// Diastolic Pressure
        case diastolicPressure      = 1
        /// Mean Arterial Pressure
        case meanArterialPressure   = 2
        /// Map Sample Mean
        case mapSampleMean          = 3
        /// Map Morning Values
        case mapMorningValues       = 4
        /// Map Evening Values
        case mapEveningValues       = 5
        /// Heart Rate
        case heartRate              = 6
        /// Heart Rate Type
        case heartRateType          = 7
        /// Status
        case status                 = 8
        /// User Profile Index
        case userProfileIndex       = 9
    }
}

public extension BloodPressureMessage.FitCodingKeys {
    /// Key Base Type
    public var baseType: BaseType { return self.baseData.type }
}

internal extension BloodPressureMessage.FitCodingKeys {

    /// Key Base Resolution
    internal var resolution: Resolution { return self.baseData.resolution }

    /// Key Base Data
    internal var baseData: BaseData {
        switch self {
        case .timestamp:
            return BaseData(type: .uint32, resolution: Resolution(scale: 1.0, offset: 0.0))

        case .systolicPressure:
            // 1 * mmHg + 0
            return BaseData(type: .uint16, resolution: Resolution(scale: 1.0, offset: 0.0))
        case .diastolicPressure:
            // 1 * mmHg + 0
            return BaseData(type: .uint16, resolution: Resolution(scale: 1.0, offset: 0.0))
        case .meanArterialPressure:
            // 1 * mmHg + 0
            return BaseData(type: .uint16, resolution: Resolution(scale: 1.0, offset: 0.0))
        case .mapSampleMean:
            // 1 * mmHg + 0
            return BaseData(type: .uint16, resolution: Resolution(scale: 1.0, offset: 0.0))
        case .mapMorningValues:
            // 1 * mmHg + 0
            return BaseData(type: .uint8, resolution: Resolution(scale: 1.0, offset: 0.0))
        case .mapEveningValues:
            // 1 * mmHg + 0
            return BaseData(type: .uint16, resolution: Resolution(scale: 1.0, offset: 0.0))
        case .heartRate:
            // 1 * bpm + 0
            return BaseData(type: .uint8, resolution: Resolution(scale: 1.0, offset: 0.0))
        case .heartRateType:
            return BaseData(type: .enumtype, resolution: Resolution(scale: 1.0, offset: 0.0))
        case .status:
            return BaseData(type: .enumtype, resolution: Resolution(scale: 1.0, offset: 0.0))
        case .userProfileIndex:
            return BaseData(type: .uint16, resolution: Resolution(scale: 1.0, offset: 0.0))
        }
    }
}

// Encoding
internal extension BloodPressureMessage.FitCodingKeys {

    internal func encodeKeyed(value: HeartRateType) throws -> Data {
        return try self.baseType.encodedResolution(value: value.rawValue, resolution: self.resolution)
    }

    internal func encodeKeyed(value: BloodPressureStatus) throws -> Data {
        return try self.baseType.encodedResolution(value: value.rawValue, resolution: self.resolution)
    }
}

// Encoding
extension BloodPressureMessage.FitCodingKeys: KeyedEncoder {

    internal func encodeKeyed(value: Bool) throws -> Data {
        return try self.baseType.encodedResolution(value: value, resolution: self.resolution)
    }

    internal func encodeKeyed(value: UInt8) throws -> Data {
        return try self.baseType.encodedResolution(value: value, resolution: self.resolution)
    }

    internal func encodeKeyed(value: ValidatedBinaryInteger<UInt8>) throws -> Data {
        return try self.baseType.encodedResolution(value: value, resolution: self.resolution)
    }

    internal func encodeKeyed(value: UInt16) throws -> Data {
        return try self.baseType.encodedResolution(value: value, resolution: self.resolution)
    }

    internal func encodeKeyed(value: ValidatedBinaryInteger<UInt16>) throws -> Data {
        return try self.baseType.encodedResolution(value: value, resolution: self.resolution)
    }

    internal func encodeKeyed(value: UInt32) throws -> Data {
        return try self.baseType.encodedResolution(value: value, resolution: self.resolution)
    }

    internal func encodeKeyed(value: ValidatedBinaryInteger<UInt32>) throws -> Data {
        return try self.baseType.encodedResolution(value: value, resolution: self.resolution)
    }

    internal func encodeKeyed(value: Double) throws -> Data {
        return try self.baseType.encodedResolution(value: value, resolution: self.resolution)
    }
}

// Field Definitions
internal extension BloodPressureMessage.FitCodingKeys {

    /// Create a Field Definition Message From the Key
    ///
    /// - Parameter size: Data Size, if nil will use the keys predefined size
    /// - Returns: FieldDefinition
    internal func fieldDefinition(size: UInt8) -> FieldDefinition {

        let fieldDefinition = FieldDefinition(fieldDefinitionNumber: UInt8(self.rawValue),
                                              size: size,
                                              endianAbility: self.baseType.hasEndian,
                                              baseType: self.baseType)

        return fieldDefinition
    }

    /// Create a Field Definition Message From the Key
    ///
    /// - Returns: FieldDefinition
    internal func fieldDefinition() -> FieldDefinition {

        let fieldDefinition = FieldDefinition(fieldDefinitionNumber: UInt8(self.rawValue),
                                              size: self.baseType.dataSize,
                                              endianAbility: self.baseType.hasEndian,
                                              baseType: self.baseType)

        return fieldDefinition
    }

}
