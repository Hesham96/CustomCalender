import UIKit

protocol DatePickerDelegate {
    func date(_ date:Date?)
}

class DatePickerVC: UIViewController {
    
    @IBOutlet weak var pickerView: UIDatePicker!
    
    var delegate:DatePickerDelegate?
    var minimumDate : Date?
    var maximumDate : Date?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    func setup() {
        pickerView.datePickerMode = .date
        pickerView.timeZone = TimeZone(identifier: "UTC") ?? TimeZone.current
    }
    
    
    @IBAction func selectAction(_ sender: Any) {
        delegate?.date(pickerView.date)
        dismiss(animated: true)
    }
    
    @IBAction func cancelAction(_ sender: Any) {
        delegate?.date(nil)
        dismiss(animated: true)
    }
    
}
