//
//  DataManager.swift
//  MTGCards
//
//  Created by Joseph Beaudoin on 1/13/25.
//



import Foundation
import CoreData


public class DataManager {
    
    static func getSet(setCode: String) async -> SetDTO? {
        guard let setURL = URL(string: "https://mtgjson.com/api/v5/\(setCode).json") else { return nil }
        
        do {
            let (data, _) = try await URLSession.shared.data(from: setURL)
            let set = try? JSONDecoder().decode(SetDTO.self, from: data)
            return set
        } catch {
            print(error)
        }
        return nil
    }
    
    static func getSetList() async -> SetList? {
        guard let setListURL = URL(string: "https://mtgjson.com/api/v5/SetList.json") else { return nil }
        do {
            let (data, _) = try await URLSession.shared.data(from: setListURL)
            let setList = try? JSONDecoder().decode(SetList.self, from: data)
            return setList
        } catch {
            print(error)
        }
        return nil
        
    }
    //        static func fetchData(url: URL) async throws -> Data {
    //            let (data,response) = try await URLSession.shared.data(from: url)
    //            return data
    //        }
    
    
    
    
    
    
    
    
    func newJSONDecoder() -> JSONDecoder {
        let decoder = JSONDecoder()
        if #available(iOS 10.0, OSX 10.12, tvOS 10.0, watchOS 3.0, *) {
            decoder.dateDecodingStrategy = .iso8601
        }
        return decoder
    }
    
    func newJSONEncoder() -> JSONEncoder {
        let encoder = JSONEncoder()
        if #available(iOS 10.0, OSX 10.12, tvOS 10.0, watchOS 3.0, *) {
            encoder.dateEncodingStrategy = .iso8601
            encoder.outputFormatting = .prettyPrinted
        }
        return encoder
    }
}
