import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var vkLink: UIButton!
    @IBOutlet weak var mygamesLink: UIButton!
    @IBOutlet weak var sferumLink: UIButton!
    @IBOutlet weak var youlaLink: UIButton!
    @IBOutlet weak var samokatLink: UIButton!
    @IBOutlet weak var citidriveLink: UIButton!
    @IBOutlet weak var cloudLink: UIButton!
    @IBOutlet weak var aptekiLink: UIButton!
    @IBOutlet weak var calendarLink: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        
    }


    @IBAction func clickLink(_ sender: UIButton) {
        let linkApp: String
        let linkSafari: String
        
        // Get links
        switch sender {
            case vkLink:
                linkApp = "vk://"
                linkSafari = "https://vk.com/"
            case mygamesLink:
                linkApp = "mygamesapp://"
                linkSafari = "https://my.games/"
            case sferumLink:
                linkApp = "sferum://"
                linkSafari = "https://sferum.ru/?p=start"
            case youlaLink:
                linkApp = "youla://"
                linkSafari = "https://youla.ru/"
            case samokatLink:
                linkApp = "samokat://"
                linkSafari = "https://samokat.ru/"
            case citidriveLink:
                linkApp = "citydrive://"
                linkSafari = "https://citydrive.ru/"
            case cloudLink:
                linkApp = "cloudmailru://"
                linkSafari = "https://cloud.mail.ru/home/"
            case aptekiLink:
                linkApp = "vseapteki://"
                linkSafari = "https://vseapteki.ru/"
            case calendarLink:
                linkApp = "calendarmail://"  // Существует только веб-версия
                linkSafari = "https://calendar.mail.ru/"
            default:
                return
        }
        
        // Get URL
        guard let urlApp = URL(string: linkApp) else {
            return
        }
        guard let urlSafari = URL(string: linkSafari) else {
            return
        }
        
        // Open URL
        if UIApplication.shared.canOpenURL(urlApp) {
            UIApplication.shared.open(urlApp)
            print("I am in app")
        } else {
            UIApplication.shared.open(urlSafari)
            print("I am in safari")
        }
    }
    
}

