//
//  ViewController.swift
//  Swift_PickVIew1
//
//  Created by 王文清 on 2016/12/6.
//  Copyright © 2016年 casdata. All rights reserved.
//
/*
 使用PickView组件 
 
 */
import UIKit

class ViewController: UIViewController , UIPickerViewDelegate ,UIPickerViewDataSource{

    var zdyPickView:UIPickerView!//定义了一个变量,类型是UIPickView,!是一定有值
    
    override func viewDidLoad() {
        super.viewDidLoad()
        zdyPickView  =  UIPickerView()//用UIPickView()来,实例化类对象
        zdyPickView.center = self.view.center
        zdyPickView.delegate = self
        zdyPickView.dataSource = self
        view.addSubview(zdyPickView)
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        if   pickerView == zdyPickView {
            return 1
        }
        return 0
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if      pickerView  == zdyPickView{
            return 10
        }
        return 0
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return "\(row+1)"
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

