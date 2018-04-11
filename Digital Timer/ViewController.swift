import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timeLabel: UILabel!
    var myTimer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        myTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(self.updateTime),userInfo: nil, repeats: true)
        
        //클로저(Closure)의 사용
        myTimer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: {
            (myTimer) in
            self.updateTime()
            })
    }
    
    @objc func updateTime() {
        let date = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm:ss EEE YYYY"
        timeLabel.text = formatter.string(from: date)
    }

}

