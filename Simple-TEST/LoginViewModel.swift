import Foundation

class LoginViewModel {
    
    init() {
        
    }
    
    func validatePhoneNumber(phoneNumber: String) -> Bool {
        
        if(phoneNumber.count < 10) {
            return false
        }
        
        if Int(phoneNumbers) == nil {
            return false
        }
        
        return true
    }
    
}
