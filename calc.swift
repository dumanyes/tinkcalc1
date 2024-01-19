import UIKit

class CalculatorViewController: UIViewController {

    
    @IBAction func buttonPressed(_ sender: UIButton) {
        if let buttonText = sender.titleLabel?.text {
            print("Button pressed: \(buttonText)")
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        let addButton = createButton(title: "+")
        let subtractButton = createButton(title: "-")
        let multiplyButton = createButton(title: "x")
        let divideButton = createButton(title: "/")
        let resetButton = createButton(title: "C")
        
        for number in 1...9 {
            let digitButton = createButton(title: "\(number)")
        }
        
        
        addButton.frame = CGRect(x: 10, y: 100, width: 50, height: 50)
        subtractButton.frame = CGRect(x: 70, y: 100, width: 50, height: 50)
        multiplyButton.frame = CGRect(x: 130, y: 100, width: 50, height: 50)
        divideButton.frame = CGRect(x: 190, y: 100, width: 50, height: 50)
        resetButton.frame = CGRect(x: 10, y: 160, width: 50, height: 50)
        
       
        view.addSubview(addButton)
        view.addSubview(subtractButton)
        view.addSubview(multiplyButton)
        view.addSubview(divideButton)
        view.addSubview(resetButton)
    }
    private func createButton(title: String) -> UIButton {
        let button = UIButton(type: .system)
        button.setTitle(title, for: .normal)
        button.addTarget(self, action: #selector(buttonPressed(_:)), for: .touchUpInside)
        return button
    }
}
