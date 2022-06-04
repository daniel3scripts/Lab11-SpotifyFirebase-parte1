
import UIKit
import FirebaseAuth

class ViewController: UIViewController {
    
    @IBOutlet weak var textFieldEmail: UITextField!
    @IBOutlet weak var textFieldPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func onTapedLogin(_ sender: Any) {
        let email=textFieldEmail.text!
        let password=textFieldPassword.text!
        
        login(email: email, password: password)
    }
    func login(email:String,password:String){
        Auth.auth().signIn(withEmail: email, password: password)  {authResult,error in
            if error != nil{
                self.storeUser(email: email, password: password)
            }
            // vamo a otra vista
        }
        
    }
    
    func storeUser(email:String,password:String){
        Auth.auth().createUser(withEmail: email, password: password) {authResult,error in
            if error == nil{
                 //vamo a otra vista
            }
            
        }
        
    }


}

