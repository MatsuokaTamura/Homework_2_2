//
//  ViewController.swift
//  Homework_2_2
//
//  Created by Matsuoka Tamura on 01.02.2022.
//

import UIKit

class ViewController: UIViewController {
    
    // Сначала вставляем вьюшечку
    @IBOutlet var colorView: UIView!
    
    // После чего добавляем наши лейблы-значения
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    
    // И уже затем вносим 1 часть слайдеров как аутлетов
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    // Далее идут функции
    override func viewDidLoad() {
        super.viewDidLoad()
       
        // Задаем радиус вьюшке
        colorView.layer.cornerRadius = 25
        
        // Задаем цвета с левой стороны у слайдеров
        redSlider.minimumTrackTintColor = .red
        greenSlider.minimumTrackTintColor = .green
        // Поскольку у нас автоматически и по умолчанию голубой, то этот код не обязателен - blueSlider.minimumTrackTintColor = .blue
        
        // Добавляем цвета в вью через приватный 1 метод
        setsOfColors()
        
        
        // Теперь совмещаем значения лейбла в зависимости от слайдера и округляем до сотых по 2f через приватный 2 метод
        labelInValueSlider()
    }

    // Создаем единый экшн ко всем слайдерам
    @IBAction func RedGreenBlueSlider(_ sender: UISlider) {
        setsOfColors()
        
        labelInValueSlider()
    }
    
    //
    private func setsOfColors() {
        colorView.backgroundColor = UIColor (
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1)
    }
    //Теперь совмещаем значения лейбла в зависимости от слайдера и округляем до сотых по 2f
    private func labelInValueSlider() {
        redLabel.text = String(format: "%.2f", redSlider.value)
        greenLabel.text = String(format: "%.2f", greenSlider.value)
        blueLabel.text = String(format: "%.2f", blueSlider.value)
    }

}

