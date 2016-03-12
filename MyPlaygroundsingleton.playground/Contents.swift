//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
//singleton NSNumberFormattor
//20-> $20.00

import Foundation

class currencyFormatter: NSNumberFormatter {
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init() {
        super.init()
        self.locale = NSLocale.currentLocale()
        self.maximumFractionDigits = 2
        self.maximumFractionDigits = 2
        self.alwaysShowsDecimalSeparator = true
        self.numberStyle = .CurrencyStyle
        
    }
    class var sharedInstance: currencyFormatter {
        struct Static {
            static let instance = currencyFormatter()
            
        }
        return Static.instance
        
    }
}

print(currencyFormatter.sharedInstance.stringFromNumber(20)!)
print(currencyFormatter.sharedInstance.stringFromNumber(50)!)

