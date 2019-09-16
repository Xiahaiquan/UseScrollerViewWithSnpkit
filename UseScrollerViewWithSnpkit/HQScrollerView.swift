//
//  HQScrollerView.swift
//  UIScroller+Snpkit
//
//  Created by HaiQuan on 19/09/2017.
//  Copyright © 2017 HaiQuan. All rights reserved.
//

import UIKit

class HQScrollerView: UIScrollView {
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = UIColor.yellow
        self.isPagingEnabled = true
        configUI()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    func configUI() {
        
        let containerView = UIView()
        containerView.backgroundColor = UIColor.red
        addSubview(containerView)
        containerView.snp.makeConstraints { (make) in
            make.edges.equalTo(self)
            make.width.equalTo(self)
            
        }
        
        
        let view0 = UIView()
        view0.backgroundColor = UIColor.black
        containerView.addSubview(view0)
        view0.snp.makeConstraints { (make) in
            make.top.equalTo(0)
            make.left.right.equalTo(containerView)
            make.height.equalTo(100)
            
        }
        
        
        let view1 = UIView()
        view1.backgroundColor = UIColor.blue
        containerView.addSubview(view1)
        view1.snp.makeConstraints { (make) in
            make.top.equalTo(view0.snp.bottom)
            make.left.right.equalTo(containerView)
            make.height.equalTo(200)
            
        }
        
        
        let view2 = UIView()
        view2.backgroundColor = UIColor.gray
        containerView.addSubview(view2)
        view2.snp.makeConstraints { (make) in
            make.top.equalTo(view1.snp.bottom)
            make.left.right.equalTo(containerView)
            make.height.equalTo(300)
            
        }
        
        
        let view3 = UIView()
        view3.backgroundColor = UIColor.green
        containerView.addSubview(view3)
        view3.snp.makeConstraints { (make) in
            make.top.equalTo(view2.snp.bottom)
            make.left.right.equalTo(containerView)
            make.height.equalTo(400)
            
        }
        
        let view4 = UIView()
        view4.backgroundColor = UIColor.darkGray
        containerView.addSubview(view4)
        view4.snp.makeConstraints { (make) in
            make.top.equalTo(view3.snp.bottom)
            make.left.right.equalTo(containerView)
            make.height.equalTo(500)
            
        }
        
        
        containerView.snp.makeConstraints { (make) in
            make.bottom.equalTo(view4)
        }
        
    }
}
