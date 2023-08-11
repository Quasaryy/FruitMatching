//
//  ViewController.swift
//  FruitMatching
//
//  Created by Yury on 11/08/2023.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    // MARK: - IB Outlets
    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var fruitImageView: UIImageView!
    
    
    // MARK: - Private Properties
    private let engNames = 1
    
    // MARK: - viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pickerView.delegate = self
        pickerView.dataSource = self
        
    }

    // MARK: - IB Actions
    @IBAction func checkMatchingTapped(_ sender: UIButton) {
    }
    
    // MARK: - PickerView Delegate
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        1
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        2
    }

    
}

