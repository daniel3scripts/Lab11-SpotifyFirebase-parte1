
import Foundation

class HelperString {
    
    static let imageProfileLink = "https://i.scdn.co/image/ab6775700000ee855dbe3c2a7703233f9028b61c"
    
    static func getURLFromString(url: String) -> URL? {
        guard let url = URL(string: url) else { return nil }
        
        return url
    }
    
    static func setFormatNumber(number: Int) -> String {
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .decimal
        
        guard let formattedNumber = numberFormatter.string(from: NSNumber(value: number)) else { return "" }
        
        return formattedNumber
    }
    
}
