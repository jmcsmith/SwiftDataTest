//
//  DownloadDataView.swift
//  MTGCards
//
//  Created by Joseph Beaudoin on 1/13/25.
//


import SwiftUI
import CoreData
import Zip

struct DownloadDataView: View {
    @Environment(\.modelContext) private var modelContext
    @State var statusText = "Downloading....."
    @State var importedSets = 0
    @Binding var tabSelection: Int
    var body: some View {
        VStack {
            Text("Download Data")
//            Button(action: {
//                Task {
//                    print(Date())
//                    let setlist = await DataManager.getSetList()
//                    if let list = setlist?.data {
//                        print(list.count)
//                        for s in list {
//                            if let code = s.code {
//                                
//                                let set = await DataManager.getSet(setCode: code)
//                                print("\(code) - \(set?.data?.code ?? "") - \(set?.data?.name ?? "") - \(set?.data?.cards?.count ?? 0) - \(set?.data?.tokens?.count ?? 0)")
//                            }
//                        }
//                    }
//                    print("Done")
//                    print(Date())
//                    tabSelection = 3
//                }
//            }, label: {
//                Text("Download Data")
//            })
//            .buttonStyle(.borderedProminent)
            Button(action: {
                self.statusText = "Clicked"
                Task { 
                    print(Date())
                    let setFileZipURL = "https://mtgjson.com/api/v5/AllSetFiles.zip"
                    if let url = URL(string: setFileZipURL) {
                        do {
                            try url.download(to: .documentDirectory, overwrite: true){ url, error in
                                guard let url = url else {
                                    print("Failed to download file")
                                    return
                                }
                                do {
                                    print("File downloaded to: \(url)")
                                    let destinationUrl = try FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: true).appendingPathComponent("CurrentJson")
                                    try FileManager.default.createDirectory(at: destinationUrl, withIntermediateDirectories: true, attributes: nil)
                                    try Zip.unzipFile(url, destination: destinationUrl, overwrite: true, password: nil) // Unzip
                                    let jsonFiles = try FileManager.default.contentsOfDirectory(at: destinationUrl, includingPropertiesForKeys: nil).sorted {
                                        return $0.lastPathComponent > $1.lastPathComponent
                                        
                                    }
                                    print(jsonFiles.count)
                                    DispatchQueue.main.async{ self.statusText = "\(jsonFiles.count) files downloaded..." }
                                    //                                    for jsonFile in jsonFiles {
                                    //                                        print("Unzipped: \(jsonFile.lastPathComponent)")
                                    //                                        //get data from file
                                    //                                        if !jsonFile.lastPathComponent.contains(".json") {
                                    //                                            continue
                                    //                                        }
                                    //                                        var data: Data
                                    //                                        do {
                                    //                                            data = try Data(contentsOf: jsonFile)
                                    //                                            let set = try newJSONDecoder().decode(SetDTO.self, from: data)
                                    //                                            let code = set.data?.code ?? ""
                                    //                                            print("\(code) - \(set.data?.code ?? "") - \(set.data?.name ?? "") - \(set.data?.cards?.count ?? 0) - \(set.data?.tokens?.count ?? 0)")
                                    //                                            let creator = ModelCreator(modelContainer: modelContext.container)
                                    //                                            creator.insertSet(from: set)
                                    //                                        } catch {
                                    //                                            print("error in URL loop")
                                    //                                            print(error)
                                    //                                            continue
                                    //                                        }
                                    //
                                    //                                    }
                                    DispatchQueue.concurrentPerform(iterations: jsonFiles.count) { (index) in
                                        print("\(index) of \(jsonFiles.count)")
                                        let jsonFile = jsonFiles[index]
                                        if !jsonFile.lastPathComponent.contains(".json") {
                                            
                                        } else {
                                            var data: Data
                                            do {
                                                data = try Data(contentsOf: jsonFile)
                                                let set = try newJSONDecoder().decode(SetDTO.self, from: data)
                                                let code = set.data?.code ?? ""
                                                if ((set.data?.cards?.first(where: { $0.rulings?.count ?? 0 > 0 } )) != nil) {
                                                    print(code)
                                                }
                                                //                                                print("\(code) - \(set.data?.code ?? "") - \(set.data?.name ?? "") - \(set.data?.cards?.count ?? 0) - \(set.data?.tokens?.count ?? 0)")
                                                let creator = ModelCreator(container: modelContext.container)
                                                creator.insertSet(from: set)
                                            } catch {
                                                print("error in URL loop")
                                                print(error)
                                                
                                            }
                                        }
                                    }
                                    print("Done")
                                    try FileManager.default.removeItem(at: url)
                                    try FileManager.default.removeItem(at: destinationUrl)
                                    
                                    DispatchQueue.main.async{ self.importedSets += 1 }
                                    DispatchQueue.main.async{ self.statusText = "\(self.importedSets) imported" }
       
                                } catch {
                                    print("error getting files")
                                    print(error)
                                    
                                }
                            }
                            
                        }
                        catch {
                            print("Something went wrong")
                            print(error.localizedDescription)
                        }
                    }
                    print(Date())
                    tabSelection = 3
                }
            }, label: {
                Text("Download ZIP")
            })
            .buttonStyle(.borderedProminent)
            Text(statusText)
        }
    }
    func newJSONDecoder() -> JSONDecoder {
        let decoder = JSONDecoder()
        if #available(iOS 10.0, OSX 10.12, tvOS 10.0, watchOS 3.0, *) {
            decoder.dateDecodingStrategy = .iso8601
        }
        return decoder
    }

}
extension URL {
    func download(to directory: FileManager.SearchPathDirectory, using fileName: String? = nil, overwrite: Bool = false, completion: @escaping (URL?, Error?) -> Void) throws {
        let sema = DispatchSemaphore( value: 0)
        let directory = try FileManager.default.url(for: directory, in: .userDomainMask, appropriateFor: nil, create: true)
        let destination: URL
        if let fileName = fileName {
            destination = directory
                .appendingPathComponent(fileName)
                .appendingPathExtension(self.pathExtension)
        } else {
            destination = directory
                .appendingPathComponent(lastPathComponent)
        }
        if !overwrite, FileManager.default.fileExists(atPath: destination.path) {
            completion(destination, nil)
            return
        }
        URLSession.shared.downloadTask(with: self) { location, _, error in
            guard let location = location else {
                completion(nil, error)
                return
            }
            do {
                if overwrite, FileManager.default.fileExists(atPath: destination.path) {
                    try FileManager.default.removeItem(at: destination)
                }
                try FileManager.default.moveItem(at: location, to: destination)
                completion(destination, nil)
                sema.signal()
            } catch {
                print(error)
            }
        }.resume()
        sema.wait()
    }
}
