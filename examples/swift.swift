/*

Accessed by:    Erick Edward Shepherd
Accessed on:    2018-06-06
Language:       Swift
Source entity:  CodeMirror
Source site:    codemirror.net/mode/swift/index.html

Purpose:        Example to test plugin success in syntax highlighting.

License:        MIT License

                Copyright (C) 2017 by Marijn Haverbeke <marijnh@gmail.com> 
                and others

                Permission is hereby granted, free of charge, to any person 
                obtaining a copy of this software and associated documentation 
                files (the "Software"), to deal in the Software without 
                restriction, including without limitation the rights to use, 
                copy, modify, merge, publish, distribute, sublicense, and/or 
                sell copies of the Software, and to permit persons to whom the 
                Software is furnished to do so, subject to the following 
                conditions:

                The above copyright notice and this permission notice shall be 
                included in all copies or substantial portions of the Software.

                THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, 
                EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES 
                OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND 
                NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT 
                HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, 
                WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING 
                FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR 
                OTHER DEALINGS IN THE SOFTWARE.

*/

//
//  TipCalculatorModel.swift
//  TipCalculator
//
//  Created by Main Account on 12/18/14.
//  Copyright (c) 2014 Razeware LLC. All rights reserved.
//

import Foundation

class TipCalculatorModel {

  var total: Double
  var taxPct: Double
  var subtotal: Double {
    get {
      return total / (taxPct + 1)
    }
  }

  init(total: Double, taxPct: Double) {
    self.total = total
    self.taxPct = taxPct
  }

  func calcTipWithTipPct(tipPct: Double) -> Double {
    return subtotal * tipPct
  }

  func returnPossibleTips() -> [Int: Double] {

    let possibleTipsInferred = [0.15, 0.18, 0.20]
    let possibleTipsExplicit:[Double] = [0.15, 0.18, 0.20]

    var retval = [Int: Double]()
    for possibleTip in possibleTipsInferred {
      let intPct = Int(possibleTip*100)
      retval[intPct] = calcTipWithTipPct(possibleTip)
    }
    return retval

  }

}
