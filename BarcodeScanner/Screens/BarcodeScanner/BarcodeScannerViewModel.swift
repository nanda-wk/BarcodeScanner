//
//  BarcodeScannerViewModel.swift
//  BarcodeScanner
//
//  Created by Nanda WK on 1/3/24.
//

import SwiftUI

final class BarcodeScannerViewModel: ObservableObject {
    @Published var scannedCode = ""
    @Published var alertItem: AlertItem?
    
    var statusText: String {
        // from Swift 5.1 you don't need return keyword for oneline
        scannedCode.isEmpty ? "Not Yet Scanned" : scannedCode
    }
    
    var statusTextColor: Color {
        // from Swift 5.1 you don't need return keyword for oneline
        scannedCode.isEmpty ? .red : .green
    }
}
