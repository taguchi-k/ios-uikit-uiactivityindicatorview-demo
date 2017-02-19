# UIActivityIndicatorView

## 概要
UIActivityIndicatorViewは歯車型のアクティビティインジケータを使用して、タスクが進行中であることを示すクラスです。

## 関連クラス
UIView
　
## 実装手順
1. StoryboardにUIActivityIndicatorViewを３つ（whiteLarge, white, gray）配置します。
2. ViewControllerとStoryboardの各UIActivityIndicatorViewを関連付けます。
3. StoryboardからViewControlleに紐付けたUIButtionのアクションを２つ（hidesWhenStopped設定用とアニメーション用）作成します
4. ViewControllerで各アクションの実装を行います。

## 主要プロパティ

|プロパティ名|説明|サンプル|
|---|---|---|
|hidesWhenStopped | インジケータのアニメーションが止まったときにhiddenにするかどうか（storyboardで設定可能） | indicator.hidesWhenStopped |
|isAnimating | アニメーション中かどうか（storyboardで設定可能）| indicator.isAnimating |
|color | インジケータの色（storyboardで設定可能）| indicator.color |

## 主要メソッド

|メソッド名|説明|サンプル|
|---|---|---|
|startAnimating() | アニメーションを開始する| indicator.startAnimating() |
|stopAnimating() | アニメーションをやめる| indicator.stopAnimating() |

## Constants

|定数名|説明|サンプル|
|---|---|---|
|UIActivityIndi​​catorViewStyle |インジケータのスタイル |// 大きな白 <br> .whiteLarge <br> // 白（デフォルト） <br> .white <br> // グレー <br> .gray| 

## フレームワーク
UIKit.framework

## サポートOSバージョン
iOS2.0以上

## 参考
https://developer.apple.com/reference/uikit/uiactivityindicatorview

## 開発環境
|category | Version|
|---|---|
| Swift | 3.0.2 |
| XCode | 8.2.1 |
| iOS | 10.0〜 |

