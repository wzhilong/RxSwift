//
//  UIView+RxTests.swift
//  Tests
//
//  Created by Krunoslav Zaher on 12/6/15.
//  Copyright © 2015 Krunoslav Zaher. All rights reserved.
//

import Foundation

import RxSwift
import RxCocoa
import UIKit
import XCTest

class UIViewTests : RxTest {
}

extension UIViewTests {
    func testHidden_True() {
        let subject = UIView(frame: CGRect.zero)
        Observable.just(true).subscribe(subject.rx.hidden).dispose()

        XCTAssertTrue(subject.isHidden == true)
    }

    func testEnabled_False() {
        let subject = UIView(frame: CGRect.zero)
        Observable.just(false).subscribe(subject.rx.hidden).dispose()

        XCTAssertTrue(subject.isHidden == false)
    }
}

extension UIViewTests {
    func testAlpha_0() {
        let subject = UIView(frame: CGRect.zero)
        Observable.just(0).subscribe(subject.rx.alpha).dispose()

        XCTAssertTrue(subject.alpha == 0.0)
    }

    func testAlpha_1() {
        let subject = UIView(frame: CGRect.zero)
        Observable.just(1).subscribe(subject.rx.alpha).dispose()

        XCTAssertTrue(subject.alpha == 1.0)
    }
}
