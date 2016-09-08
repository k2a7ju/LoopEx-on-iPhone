//
//  LoopEx.swift
//  LoopEx
//
//  Created by HIROYUKI SHIRAKAZU on 2016/04/25.
//  Copyright © 2016年 HIROYUKI SHIRAKAZU. All rights reserved.
//

import UIKit

class LoopEx: UIView {
    //描写時に呼ばれる
    override func drawRect(rect: CGRect) {
        //for文による計算
        var sum0 = 0
        for var i in 0..<100 {
            sum0 += i
        }
        
        //while文に関する計算
        var sum1 = 0
        var j = 1
        while j <= 100 {
            sum1 += j;
            j+=1
        }
        
        //ループの途中での脱出
        var sum2 = 0
        var k = 0
        while true {
            k+=1
            if k > 100 {
                break
            }
            if k % 2 != 0 {
                continue
            }
            sum2 += k
        }
        
        //表示
        drawString("forの計算結果:\(sum0)", x:0, y:20)
        drawString("whileの計算結果:\(sum1)", x:0, y:20+26)
        drawString("100以下の偶数の和 計算結果:\(sum2)", x:0, y:20+26*2)
    }
    func drawString(str: String, x:Int, y:Int){
        let attrs = [NSFontAttributeName: UIFont.systemFontOfSize(20)]
        str.drawAtPoint(CGPointMake(CGFloat(x),CGFloat(y)),withAttributes: attrs)
    }
    
}
