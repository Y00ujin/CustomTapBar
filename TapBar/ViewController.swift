//
//  ViewController.swift
//  TapBar
//
//  Created by 김유진 on 2021/02/13.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    
    @IBOutlet weak var tapCollectionView: UICollectionView!
    let text: [String] = ["회원정보", "옷보기", "장바구니", "쓰레기통"]
    
    @IBOutlet weak var scrollBarBack: UIView!
    @IBOutlet weak var scrollBar: UIView!
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for:  indexPath) as! CollectionViewCell
        
        cell.label.text = text[indexPath.row]
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        var width = collectionView.frame.width / 4
        
        return CGSize(width: width, height: width / 2)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        guard var cell = collectionView.cellForItem(at: indexPath) as? CollectionViewCell else{
                    fatalError()
        }
        
        
        if(indexPath.row == 0){
            print("12")
            cell.label.textColor = .black
            
            UIView.animate(withDuration: 0.3){
                self.scrollBar.center = CGPoint(x:43, y:3)
            }
        }else if(indexPath.row == 1){
            UIView.animate(withDuration: 0.3){
                self.scrollBar.center = CGPoint(x:150, y:3)
            }
            cell.label.textColor = .black
            print("2")
        }else if(indexPath.row == 2){
            UIView.animate(withDuration: 0.3){
                self.scrollBar.center = CGPoint(x:253, y:3)
            }
            cell.label.textColor = .black
            print("3")
        }else{
            print("4")
            cell.label.textColor = .black
            UIView.animate(withDuration: 0.3){
                self.scrollBar.center = CGPoint(x:372, y:3)
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tapCollectionView.showsHorizontalScrollIndicator = false
    }


}


