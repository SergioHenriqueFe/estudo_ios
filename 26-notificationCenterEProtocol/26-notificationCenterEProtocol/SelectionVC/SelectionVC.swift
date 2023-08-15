
//Notification Center ex: quando alguem grita todos escutam, porém ocoorre ação aquele que foi chamada
import UIKit

protocol SelectionVCProtocol : AnyObject{
    // criações de variaves e func
    
    func updatemacbook()
    func updateIphone()
}

class SelectionVC: UIViewController {
    //weak variavel fraca que pode ser dispensada da memória após o uso dela
    private weak var delegate : SelectionVCProtocol?
    
    //assinatura 
    public func delegate(delegate : SelectionVCProtocol?){
        self.delegate = delegate
    }
    
    var selectionScreen: SelectionScreen?
    override func loadView() {
        selectionScreen = SelectionScreen()
        view = selectionScreen
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        selectionScreen?.delegate(delegate: self)

        // Do any additional setup after loading the view.
    }


}
extension SelectionVC: SelectionScreenProtocol {
    
    func tappedMacbookButton() {
        //name é o identificador quem faz a chamadda
//        NotificationCenter.default.post(name:Notification.Name("mac"), object: UIColor.red)
        
        delegate?.updatemacbook()
        dismiss(animated: true)
    }
    
    func tappedIphoneButton() {
//        NotificationCenter.default.post(name:Notification.Name("iphone"), object: UIColor.blue)
        
        delegate?.updateIphone()
        
        dismiss(animated: true)
    }
    
    
    
    
}
