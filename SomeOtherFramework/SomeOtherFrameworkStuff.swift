//
//  SomeOtherFrameworkStuff.swift
//  SomeOtherFramework
//
//  Created by Gregor Dschung on 25.07.19.
//  Copyright © 2019 Gregor Dschung. All rights reserved.
//

public protocol SomeOtherFrameworkStuff {
    func foobar2()
}

class DefaultSomeOtherFrameworkStuff: SomeOtherFrameworkStuff {
    
    func foobar2() {
        print("foobar2 called")
    }
    
}
