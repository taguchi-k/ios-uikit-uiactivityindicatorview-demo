//
//  ActivityIndicatorViewHelper.swift
//  ios-uikit-uiactivityindicatorview-demo
//
//  Created by Kentaro on 2017/04/24.
//  Copyright © 2017年 Kentao Taguchi. All rights reserved.
//

import UIKit

final class ActivityIndicatorViewHelper {

    // MARK: - Property
    private let activityIndicator = UIActivityIndicatorView()

    /// インジケータのスタイル
    var style: UIActivityIndicatorViewStyle {
        get {
            return activityIndicator.activityIndicatorViewStyle
        }
        set {
            activityIndicator.activityIndicatorViewStyle = newValue
        }
    }

    /// インジケータの色
    var color: UIColor? {
        get {
            return activityIndicator.color
        }
        set {
            activityIndicator.color = newValue
        }
    }

    /// アニメーションしていないときにインジケータを隠すかどうか
    var hidesWhenStopped: Bool {
        get {
            return activityIndicator.hidesWhenStopped
        }
        set {
            activityIndicator.hidesWhenStopped = newValue
        }
    }

    /// インジケータがアニメーションしているか
    var isAnimating: Bool {
        return activityIndicator.isAnimating
    }

    // MARK: - Initializer
    /// ヘルパーのイニシャライザ（デフォルト値でいい場合は引数不要）
    ///
    /// - Parameters:
    ///   - style: スタイル
    ///   - color: 色
    ///   - hidesWhenStopped: アニメーションしていないときに隠すかどうか
    init(style: UIActivityIndicatorViewStyle = .white,
         color: UIColor? = nil,
         hidesWhenStopped: Bool = true) {

        activityIndicator.activityIndicatorViewStyle = style
        activityIndicator.color = color
        activityIndicator.hidesWhenStopped = hidesWhenStopped
    }

    // MARK: - Method
    /// インジケータが止まっていたら動かし、動いていたら止める
    func toggleAnimation() {

        if activityIndicator.isAnimating {
            activityIndicator.stopAnimating()
        } else {
            activityIndicator.startAnimating()
        }
    }
}
