import XCTest
@testable import Simple_TEST

class LoginViewModelTests: XCTestCase {
    
    var viewModel: LoginViewModel!

    override func setUp() {
        viewModel = LoginViewModel()
    }

    override func tearDown() {
        viewModel = nil
    }

    func testValidatePhoneNumberIsCorrect() {
        
        let phoneNumber = "0899999999"
        XCTAssertEqual(viewModel.validatePhoneNumber(phoneNumber: phoneNumber),
                       true,
                       "Not Correct !!!")
    }
    
    func testValidtePhoneNumberIsInCorrect1() {
        let phoneNumber = "08999999aa"
        XCTAssertEqual(viewModel.validatePhoneNumber(phoneNumber: phoneNumber),
                       false,
                       "Not Correct !!!")
    }
    
    func testValidtePhoneNumberIsInCorrect2() {
        let phoneNumber = "0199999999"
        XCTAssertEqual(viewModel.validatePhoneNumber(phoneNumber: phoneNumber),
                       false,
                       "Not Correct !!!")
    }
    
    func testValidtePhoneNumberIsInCorrect3() {
        let phoneNumber = "029999999"
        XCTAssertEqual(viewModel.validatePhoneNumber(phoneNumber: phoneNumber),
                       true,
                       "Not Correct !!!")
    }

}
