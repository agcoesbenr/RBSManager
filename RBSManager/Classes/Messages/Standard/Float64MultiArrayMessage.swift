//
//  Float64MultiArrayMessage.swift
//
//  Created by wesgoodhoofd on 2019-01-22.
//

import UIKit
import ObjectMapper

public class Float64MultiArrayMessage: RBSMessage {
	public var layout: MultiArrayLayoutMessage?
    public var data: [Float64]?
    
    public override init() {
        super.init()
        layout = MultiArrayLayoutMessage()
    }
    
    public required init?(map: Map) {
        super.init(map: map)
    }
    

    public override func mapping(map: Map) {
	    layout <- map["layout"]
		data <- (map["data"])
    }
}

