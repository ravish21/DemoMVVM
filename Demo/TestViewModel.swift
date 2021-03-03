//
//  TestViewModel.swift
//  Demo
//
//  Created by Ravish Kumar on 03/03/21.
//

import UIKit

class TestViewModel: NSObject {

    var alphaArray = Array<TestData>()
    var numericArray = Array<TestData>()
    
    override init() {
        
        let a1 = TestData(item:"A")
        let a2 = TestData(item:"B")
        let a3 = TestData(item:"C")
        let b1 = TestData(item:"1")
        let b2 = TestData(item:"2")
        let b3 = TestData(item:"3")
        alphaArray.append(a1)
        alphaArray.append(a2)
        alphaArray.append(a3)
        numericArray.append(b1)
        numericArray.append(b2)
        numericArray.append(b3)
    }
      
     func numberOfSection() -> Int {
         return 2
     }
    
      func numberOfRowsInSection() -> Int {
          return 3
      }
}
