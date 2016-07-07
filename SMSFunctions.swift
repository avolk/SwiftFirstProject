//
//  SMSFunctions.swift
//  Texter
//
//  Created by  Andrii Yakovliev on 07.07.16.
//  Copyright © 2016 Andrii Yakovliev. All rights reserved.
//

import Foundation

func sendTextMessage(message: String, number: String)
{
    var clockworkSMS = "https://api.clockworksms.com/http/send.aspx?to=" + number
        + "&content=" + message
        + "&key=2daeddca759c6c58b9e1ecd86d257f95bf20caec"
    clockworkSMS = clockworkSMS.stringByReplacingOccurrencesOfString(" ", withString: "+")
    let clockworkURL = NSURL(string: clockworkSMS)
    if clockworkURL != nil
    {
        let responseData = NSData(contentsOfURL: clockworkURL!)
        if responseData != nil
        {
            let responseString = String(data: responseData!, encoding: NSUTF8StringEncoding)
            if responseString != nil
            {
                print(responseString!)
            }
        }
    }
    

}
