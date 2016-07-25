//
//  DetailViewController.swift
//  ZGSwiftDemo
//
//  Created by mac_zhu on 16/7/21.
//  Copyright © 2016年 mac_zhu. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController ,UIPickerViewDataSource, UIPickerViewDelegate ,UICollectionViewDelegate, UICollectionViewDataSource
{
//    override func viewWillAppear(animated: Bool) {
//        // 判断控制器是否是有控制器
//     if self.navigationController!.viewControllers.count > 0 {
//        // 隐藏tabBar
//        self.hidesBottomBarWhenPushed = true;
//        
//      }
//    }
    override func viewDidLoad() {
        self.view.backgroundColor = UIColor.whiteColor()
        
        if self.title == "UILabel"
        {
            let label = UILabel(frame: self.view.bounds)
            label.backgroundColor = UIColor.clearColor()
            label.text = "Hellow Swift"
            label.textAlignment = NSTextAlignment.Center
            label.font = UIFont.systemFontOfSize(15)
            self.view.addSubview(label)
        
        }else if self.title == "UIButton"
        {
            let button = UIButton(type: UIButtonType.Custom)
            button.frame = CGRectMake(110, 120, 100, 44)
            button.backgroundColor = UIColor.grayColor()
            button.setTitleColor(UIColor.redColor(), forState: UIControlState.Normal)
            button.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Highlighted)
            button.setTitle("按钮", forState: UIControlState.Normal)
            button.setTitle("点我", forState: UIControlState.Highlighted)
            button.addTarget(self, action: "buttonAction:", forControlEvents: UIControlEvents.TouchUpInside)
            button.tag = 100
            self.view.addSubview(button)
            
        }else if self.title == "UIImageView"
        {
            let image = UIImage(named: "navbg.png")
            let imageView = UIImageView(frame: CGRectMake((CGRectGetWidth(self.view.bounds) - image!.size.width)/2.0, 120, image!.size.width, image!.size.height))
            imageView.image = image
            self.view.addSubview(imageView)
            
        }else if self.title == "UISlider"
        {
            let slider = UISlider(frame: CGRectMake(60,120,200,30))
            self.view.addSubview(slider)
            
        }else if self.title == "UIWebView"
        {
            let webView = UIWebView(frame: self.view.bounds)
            let url = NSURL(string: "http://baidu.com")
            let request = NSURLRequest(URL: url!)
            webView.loadRequest(request)
            self.view.addSubview(webView)
            
            
        }else if self.title == "UISegmentedControl"
        {
            let segmentControl = UISegmentedControl(items: ["A","B","C","D","E",])
            segmentControl.frame = CGRectMake(100, 120, 100, 30)
            self.view.addSubview(segmentControl)
            
            
        }else if self.title == "UISwitch"
        {
            
            let switchControll = UISwitch(frame:CGRectMake(130, 120, 100, 30))
            switchControll.on = true
            self.view.addSubview(switchControll)
            
        }else if self.title == "UITextField"
        {
            let textFiled = UITextField(frame: CGRectMake(110, 120,self.view.frame.size.width/2 , 30))
            textFiled.backgroundColor = UIColor.lightGrayColor()
            textFiled.placeholder = "请输入文字"
            textFiled.clearButtonMode = UITextFieldViewMode.WhileEditing
            self.view.addSubview(textFiled)
            
        }else if self.title == "UIScrollView"
        {
            let scrollView = UIScrollView(frame:CGRectMake(60.0, 120.0, 200.0, 200.0))
            scrollView.pagingEnabled = true
            scrollView.showsVerticalScrollIndicator = false
            self.view.addSubview(scrollView)
            
            var fX: CGFloat = 0.0
            for(var i = 0; i < 3; ++i)
            {
                let view = UIView(frame:CGRectMake(fX, 0.0, 200.0, 200.0))
                fX += 200.0
                view.backgroundColor = UIColor.redColor()
                scrollView.addSubview(view)
            }
            scrollView.contentSize = CGSizeMake(3 * 200.0, 200.0)
            self.view.addSubview(scrollView)
            
        }else if self.title == "UISearchBar"
        {
            let searchBar = UISearchBar(frame:CGRectMake(10.0, 120.0, 300.0, 30.0))
            searchBar.showsCancelButton = true
            searchBar.searchBarStyle = UISearchBarStyle.Minimal // Default, Prominent, Minimal
            
            self.view.addSubview(searchBar)
            
        }else if self.title == "UIPageControl"
        {
            // PageControl
            let pageControl = UIPageControl(frame:CGRectMake(60.0, 120.0, 200.0, 200.0))
            pageControl.numberOfPages = 5
            pageControl.currentPageIndicatorTintColor = UIColor.blackColor()
            pageControl.pageIndicatorTintColor = UIColor.redColor()
            self.view.addSubview(pageControl)
            
        }else if self.title == "UIDatePicker"
        {
            let datePicker = UIDatePicker(frame:CGRectMake(110.0, 120.0, 200.0, 200.0))
            self.view.addSubview(datePicker)
            
        }else if self.title == "UIPickerView"
        {
            let pickerView = UIPickerView(frame:CGRectMake(10.0, 120.0, 300.0, 200.0))
            //            pickerView.delegate = self
            //            pickerView.dataSource = self
            self.view.addSubview(pickerView)
            
        }else if self.title == "UIProgressView"
        {
            let progressView = UIProgressView(progressViewStyle:UIProgressViewStyle.Default)
            progressView.frame = CGRectMake(10.0, 120.0, 300.0, 30.0)
            progressView.setProgress(0.8, animated: true)
            self.view.addSubview(progressView)
            
        }else if self.title == "UITextView"
        {
            let textView = UITextView(frame:CGRectMake(10.0, 120.0, 300.0, 200.0))
            textView.backgroundColor = UIColor.lightGrayColor()
            textView.editable = false
            textView.font = UIFont.systemFontOfSize(20)
            textView.text = "Swift is an innovative new programming language for Cocoa and Cocoa Touch. Writing code is interactive and fun, the syntax is concise yet expressive, and apps run lightning-fast. Swift is ready for your next iOS and OS X project — or for addition into your current app — because Swift code works side-by-side with Objective-C."
            self.view.addSubview(textView)
            
        }else if self.title == "UIToolbar"
        {
            let toolBar = UIToolbar(frame:CGRectMake(60.0, 120.0, 200.0, 30.0))
            
            let flexibleSpace = UIBarButtonItem(barButtonSystemItem:UIBarButtonSystemItem.FlexibleSpace, target:nil, action:nil)
            let barBtnItemA = UIBarButtonItem(title: "A", style:UIBarButtonItemStyle.Plain, target:nil, action:nil)
            let barBtnItemB = UIBarButtonItem(title: "B", style:UIBarButtonItemStyle.Plain, target:nil, action:nil)
            let barBtnItemC = UIBarButtonItem(title: "C", style:UIBarButtonItemStyle.Plain, target:nil, action:nil)
            let barBtnItemD = UIBarButtonItem(title: "D", style:UIBarButtonItemStyle.Plain, target:nil, action:nil)
            
            toolBar.items = [flexibleSpace, barBtnItemA, flexibleSpace, barBtnItemB, flexibleSpace, barBtnItemC, flexibleSpace, barBtnItemD, flexibleSpace]
            self.view.addSubview(toolBar)
            
        }else if self.title == "UIActionSheet"
        {
            // Button
            let button = UIButton(type: UIButtonType.System) as? UIButton
            button!.frame = CGRectMake(60.0, 120.0, 200.0, 50.0)
            button!.backgroundColor = UIColor.grayColor()
            button?.setTitleColor(UIColor.redColor(), forState: UIControlState.Normal)
            button!.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Highlighted)
            button?.setTitle("Show ActionSheet", forState: UIControlState.Normal)
            button?.setTitle("Show ActionSheet", forState: UIControlState.Highlighted)
            button?.addTarget(self, action: "showActionSheet", forControlEvents: UIControlEvents.TouchUpInside)
            button!.tag = 101
            self.view.addSubview(button!)
            
        }else if self.title == "UIActivityIndicatorView"
        {
            let activityIndicatorView = UIActivityIndicatorView(activityIndicatorStyle:UIActivityIndicatorViewStyle.Gray)
            activityIndicatorView.frame = CGRectMake(140.0, 120.0, 40.0, 40.0)
            activityIndicatorView.startAnimating()
            self.view.addSubview(activityIndicatorView)
            
        }else if self.title == "UICollectionView"
        {
            // FlowLayout
            let collectionViewFlowLayout = UICollectionViewFlowLayout();
            //            collectionViewFlowLayout.itemSize = CGSizeMake(<#width: CGFloat#>, <#height: CGFloat#>);
            collectionViewFlowLayout.scrollDirection = UICollectionViewScrollDirection.Vertical;
            
            // Collection view
            let collectionView = UICollectionView(frame: self.view.bounds, collectionViewLayout: collectionViewFlowLayout);
            collectionView.backgroundColor = UIColor.whiteColor();
            collectionView.delegate = self
            collectionView.dataSource = self
            self.view.addSubview(collectionView)
            
            collectionView.registerClass(CollectionViewCell.self, forCellWithReuseIdentifier: "ReuseIdentifier")
        }
        else
        {}

    }
    
    override func viewDidAppear(animated: Bool) {}
    override func viewWillDisappear(animated: Bool) {}
    override func viewDidDisappear(animated: Bool) {}
    
    func buttonAction(sender:UIButton)
    {
        print("按钮点击事件======")
        
    }
    // UIPickerViewDataSource Methods
    // returns the number of 'columns' to display.
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int
    {
        return 3
    }
    
    // returns the # of rows in each component..
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int
    {
        return 10
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?
    {
        return String(format:"%i", row)
    }
    
    // UICollectionViewDataSource methods
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1;
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 25;
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("ReuseIdentifier", forIndexPath: indexPath) as! CollectionViewCell;
        
        cell.imageView?.image = UIImage(named: String(format:"%ld.png", indexPath.row));
        cell.textLabel?.text = String(format: "(%d, %d)", indexPath.section, indexPath.row);
        
        return cell;
    }

    // UICollectionViewDelegateFlowLayout methods
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        return CGSizeMake(100.0, 120.0);
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAtIndex section: Int) -> UIEdgeInsets {
        return UIEdgeInsetsMake(5.0, 5.0, 5.0, 5.0);
    }
    
    // UICollectionViewDelegate method
    func collectionView(collectionView: UICollectionView, shouldHighlightItemAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    
    func collectionView(collectionView: UICollectionView, didHighlightItemAtIndexPath indexPath: NSIndexPath) {
    }
    
    func collectionView(collectionView: UICollectionView, didUnhighlightItemAtIndexPath indexPath: NSIndexPath) {
    }
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
    }
    
    func collectionView(collectionView: UICollectionView, shouldSelectItemAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    
    // Button Handler
    // showActionSheet
    func showActionSheet()
    {
        let alertController = UIAlertController(title: "分享", message: "微信分享", preferredStyle: UIAlertControllerStyle.ActionSheet)
        alertController.addAction(UIAlertAction(title: "取消", style: UIAlertActionStyle.Destructive, handler: nil))
        self.presentViewController(alertController, animated: true, completion:nil)
    }
    
    // didReceiveMemoryWarning
    override func didReceiveMemoryWarning()
    {}
    
}
