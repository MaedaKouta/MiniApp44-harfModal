//
//  ViewController.swift
//  MiniApp44-harfModal
//
//  Created by 前田航汰 on 2022/04/10.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let next = segue.destination
        if let sheet = next.sheetPresentationController {
            sheet.detents = [.medium(), .large()]
            //モーダル出現後も親ビュー操作可能にする
            sheet.largestUndimmedDetentIdentifier = .medium
            // 角丸の半径を変更する
            sheet.preferredCornerRadius = 40.0
            //　グラバーを表示する
            sheet.prefersGrabberVisible = true
        }
    }
}
