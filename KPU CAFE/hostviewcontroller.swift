//
//  hostviewcontroller.swift
//  BBB
//
//  Created by Jaskirat Mangat on 2021-02-07.
//
import UIKit
import SwiftUI


class SwiftUIViewHostingController: UIHostingController<MySwiftUIView> {
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder, rootView: MySwiftUIView())
    }
}
