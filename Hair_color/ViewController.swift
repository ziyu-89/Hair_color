import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redslider: UISlider!
    @IBOutlet weak var greenslider: UISlider!
    @IBOutlet weak var blueslider: UISlider!
    @IBOutlet weak var alphaslider: UISlider!
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var roundslider: UISlider!
    @IBOutlet weak var bordSlider: UISlider!
    
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    @IBOutlet weak var alphaLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updatetext()
        
        imageView.backgroundColor = UIColor(red: CGFloat(redslider.value), green: CGFloat(greenslider.value), blue: CGFloat(blueslider.value), alpha: CGFloat(alphaslider.value))
       
    }

    @IBAction func slider(_ sender: Any){
        imageView.backgroundColor = UIColor(red: CGFloat(redslider.value), green: CGFloat(greenslider.value), blue: CGFloat(blueslider.value), alpha: CGFloat(alphaslider.value))
        
        imageView.layer.cornerRadius = CGFloat(roundslider.value * 200)
        imageView.layer.borderWidth = CGFloat(bordSlider.value * 30)
        
        updatetext()
      
    }
    
    func updatetext(){
        redLabel.text = String(format: "%.0f", redslider.value * 255)
        greenLabel.text = String(format: "%.0f", greenslider.value * 255)
        blueLabel.text = String(format: "%.0f", blueslider.value * 255)
        alphaLabel.text = String(format: "%.2f", alphaslider.value)
    }
    
}

