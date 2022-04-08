//
//  MainViewController.swift
//  NetworkigLearnOnUIKit
//
//  Created by Руслан Штыбаев on 07.04.2022.
//

import UIKit

enum Link: String {
    case imageURL = "https://applelives.com/wp-content/uploads/2016/03/iPhone-SE-11.jpeg"
}

enum UserAction: String, CaseIterable {
    case downoloadImage = "Downoload Image"
    case one = "Example One"
    case two = "Example Two"
    case three = "Example Three"
    case four = "Example Four"
    case ourCourses = "Our Courses"
}

class MainViewController: UICollectionViewController {

    let userAction = UserAction.allCases

    // MARK: UICollectionViewDataSource
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        userAction.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "follow", for: indexPath) as! UserActionCell
    
        cell.userActionLabel.text  = userAction[indexPath.item].rawValue
    
        return cell
    }

    // MARK: UICollectionViewDelegate
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let userAction = userAction[indexPath.item]
        
        switch userAction {
        case .downoloadImage: performSegue(withIdentifier: "showImage", sender: nil)
        case .one: oneButtonPressed()
        case .two: twoButtonPressed()
        case .three: threeButtonPressed()
        case .four: fourButtonPressed()
        case .ourCourses: oneButtonPressed()
        }
    }
 

    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using [segue destinationViewController].
     // Pass the selected object to the new view controller.
     }
     */
}

// MARK: - Networking
extension MainViewController {
    private func oneButtonPressed() {
        
    }
    private func twoButtonPressed() {
        
    }
    private func threeButtonPressed() {
        
    }
    private func fourButtonPressed() {
        
    }
}

extension MainViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: UIScreen.main.bounds.width - 40, height: 100)
    }
}
