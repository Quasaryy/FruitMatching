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
    private let fruitsEng = FruitsEng.getFruitsEng()
    private let fruitsRu = FruitsRu.getFruitsRu()
    
    // MARK: - viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pickerView.delegate = self
        pickerView.dataSource = self
        
        // Fruit image on app start
        let row = pickerView.selectedRow(inComponent: 0)
        fruitImageView.image = UIImage(named: fruitsEng[row].image)
        
    }
    
    // MARK: - IB Actions
    @IBAction func checkMatchingTapped(_ sender: UIButton) {
        let row0 = pickerView.selectedRow(inComponent: 0)
        let row1 = pickerView.selectedRow(inComponent: 1)
        
        if fruitsEng[row0].tag == fruitsRu[row1].tag {
            return showAlertWindow(title: "Congratulations 🥳", message: "You matched the fruits correctly")
        } else {
            return showAlertWindow(title: "Oops!", message: "Looks like the fruit didn't match. Try again.")
        }
        
    }
    
    // MARK: - PickerView Delegate
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        fruitsEng.count
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        2
    }
    
    // MARK: - PickerView DataSource
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0 {
            return fruitsEng[row].nameEng
        } else {
            return fruitsRu[row].nameRu
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if component == 0 {
            fruitImageView.image = UIImage(named: fruitsEng[row].image)
        }
    }
    
}

// MARK: - Private Methods
extension ViewController {
    // Show alert window
    private func showAlertWindow(title: String, message: String) {
        let showAlert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let buttonOK = UIAlertAction(title: "OK", style: .cancel)
        showAlert.addAction(buttonOK)
        present(showAlert, animated: true)
    }
    
}

