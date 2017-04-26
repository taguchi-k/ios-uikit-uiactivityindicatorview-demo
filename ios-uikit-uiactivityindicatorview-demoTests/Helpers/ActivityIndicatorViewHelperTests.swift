//
//  ActivityIndicatorViewHelperTests.swift
//  ios-uikit-uiactivityindicatorview-demo
//
//  Created by Kentaro on 2017/04/25.
//  Copyright © 2017年 Kentao Taguchi. All rights reserved.
//

import XCTest
@testable import ios_uikit_uiactivityindicatorview_demo

class ActivityIndicatorViewHelperTests: XCTestCase {

    private var helper: ActivityIndicatorViewHelper!
    
    override func setUp() {
        super.setUp()
        // 他のテストの影響受けないように毎回初期化する
        helper = ActivityIndicatorViewHelper()
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    /// styleの設定・取得ができるか？
    func testStyle() {
        helper.style = .gray
        XCTAssertEqual(helper.style, UIActivityIndicatorViewStyle.gray)
    }

    /// colorの設定・取得ができるか？
    func testColor() {
        helper.color = .red
        XCTAssertEqual(helper.color, UIColor.red)
    }

    /// hidesWhenStoppedの設定・取得ができるか？
    func testHidesWhenStopped() {
        helper.hidesWhenStopped = false
        XCTAssertFalse(helper.hidesWhenStopped)
    }

    /// initで初期値が設定されるか？
    func testInitDefault() {
        XCTAssertEqual(helper.style, .white)
        XCTAssertEqual(helper.color, UIColor.white)
        XCTAssertTrue(helper.hidesWhenStopped)
    }

    /// initの引数に渡した値が反映されるか？
    func testInit() {
        helper = ActivityIndicatorViewHelper(style: .gray, color: .red, hidesWhenStopped: false)
        XCTAssertEqual(helper.style, UIActivityIndicatorViewStyle.gray)
        XCTAssertEqual(helper.color, UIColor.red)
        XCTAssertFalse(helper.hidesWhenStopped)
    }

    /// インジケータが止まっていたら動かし、動いていたら止めているか
    /// - Note: isAnimating は UIActivityIndicatorView の isAnimating を返しているだけなので動作は担保されているものとし、テストしない
    func testToggleAnimation() {
        XCTAssertFalse(helper.isAnimating)
        helper.toggleAnimation()
        XCTAssertTrue(helper.isAnimating)
        helper.toggleAnimation()
        XCTAssertFalse(helper.isAnimating)
    }
}
