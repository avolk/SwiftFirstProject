//
//  main.swift
//  Texter
//
//  Created by  Andrii Yakovliev on 05.07.16.
//  Copyright © 2016 Andrii Yakovliev. All rights reserved.
//

import Foundation

print("What whould you like to text?")
guard let usersMessage = readLine(stripNewline: true) else { exit(0) }

print("OK. that's fine. Which phone number whould you like to send this to?")
guard let toNumber = readLine(stripNewline: true) else { exit(0) }

sendTextMessage(usersMessage, number: toNumber)