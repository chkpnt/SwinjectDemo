//
//  SomeFrameworkStuff.swift
//  SomeFramework
//
//  Created by Gregor Dschung on 22.07.19.
//  Copyright © 2019 Gregor Dschung. All rights reserved.
//

public protocol SomeFrameworkStuff {
    func foobar()
}

class DefaultSomeFrameworkStuff: SomeFrameworkStuff {
    
    func foobar() {
        print("foobar called")
    }
    
}
