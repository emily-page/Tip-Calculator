import UIKit

class ViewController: UIViewController , UITextFieldDelegate
{
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet var backgroundImage: UIView!
    @IBOutlet weak var buttonPicture: UIButton!
    @IBOutlet weak var buttonPictureTen: UIButton!
    @IBOutlet weak var buttonPictureTwentyFive: UIButton!
    @IBOutlet weak var buttonPictureTwenty: UIButton!
    @IBOutlet weak var numberOfPeople: UITextField!
    @IBOutlet weak var numberOfPeopleLabel: UILabel!
    @IBOutlet weak var tipPerPerson: UILabel!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
      
        self.view.backgroundColor = UIColor(patternImage: UIImage (named: "wood")!)
        
    }

    @IBAction func buttonClick(_ sender: AnyObject)
        {
        let fifteenPercent = Double(textField.text!)! + (0.15 * Double(textField.text!)!)
        let roundedFifteen = Double(round(100*fifteenPercent)/100)
            print(roundedFifteen)
            tipLabel.text = "$" + String(roundedFifteen)
            let fifteenSelect = UIImage(named: "15si") as UIImage!
            self.buttonPicture.setImage(fifteenSelect, for: UIControlState())
            
            resetButtonImageFifteen()
            
            let peopleTip = Double(roundedFifteen) / Double(numberOfPeople.text!)!
            let roundedPeopleTip = Double(round(100*peopleTip)/100)
            numberOfPeopleLabel.text = "$" + String(roundedPeopleTip)
            print(roundedPeopleTip)
            
            let fifteenTip = (0.15 * Double(textField.text!)!)
            let perPerson = Double(fifteenTip) / Double(numberOfPeople.text!)!
            let roundedPerPerson = Double(round(100*perPerson)/100)
            print(roundedPerPerson)
            tipPerPerson.text = "$" + String(roundedPerPerson)
        }
 
    @IBAction func tenButton(_ sender: AnyObject)
    {
        let tenPercent = Double(textField.text!)! + (0.10 * Double(textField.text!)!)
        let roundedTen = Double(round(100*tenPercent)/100)
        print(roundedTen)
        tipLabel.text = "$" + String(roundedTen)
        let tenSelect = UIImage(named: "10si") as UIImage!
        self.buttonPictureTen.setImage(tenSelect, for: UIControlState())
        
        resetButtonImageTen()
        
        let peopleTip = Double(roundedTen) / Double(numberOfPeople.text!)!
        let roundedPeopleTip = Double(round(100*peopleTip)/100)
        numberOfPeopleLabel.text = "$" + String(roundedPeopleTip)
        print(roundedPeopleTip)
        let tenTip = (0.10 * Double(textField.text!)!)
        let perPerson = Double(tenTip) / Double(numberOfPeople.text!)!
        let roundedPerPerson = Double(round(100*perPerson)/100)
        print(roundedPerPerson)
        tipPerPerson.text = "$" + String(roundedPerPerson)

    }

    @IBAction func twentyButton(_ sender: AnyObject)
    {
        let twentyPercent = Double(textField.text!)! + (0.20 * Double(textField.text!)!)
        let roundedTwenty = Double(round(100*twentyPercent)/100)
        print(roundedTwenty)
        tipLabel.text = "$" + String(roundedTwenty)
        let twentySelect = UIImage(named: "20si") as UIImage!
        self.buttonPictureTwenty.setImage(twentySelect, for: UIControlState())
        
        resetButtonImageTwenty()
        let peopleTip = Double(roundedTwenty) / Double(numberOfPeople.text!)!
        let roundedPeopleTip = Double(round(100*peopleTip)/100)
        numberOfPeopleLabel.text = "$" + String(roundedPeopleTip)
        print(roundedPeopleTip)
        
        let twentyTip = (0.20 * Double(textField.text!)!)
        let perPerson = Double(twentyTip) / Double(numberOfPeople.text!)!
        let roundedPerPerson = Double(round(100*perPerson)/100)
        print(roundedPerPerson)
        tipPerPerson.text = "$" + String(roundedPerPerson)
    }

    @IBAction func twentyFiveButton(_ sender: AnyObject)
    {
        let twentyFivePercent = Double(textField.text!)! + (0.25 * Double(textField.text!)!)
        let roundedTwentyFive = Double(round(100*twentyFivePercent)/100)
        print(roundedTwentyFive)
        tipLabel.text = "$" + String(roundedTwentyFive)
        let twentyFiveSelect = UIImage(named: "25si") as UIImage!
        self.buttonPictureTwentyFive.setImage(twentyFiveSelect, for: UIControlState())
        
        resetButtonImageTwentyFive()
        let peopleTip = Double(roundedTwentyFive) / Double(numberOfPeople.text!)!
        let roundedPeopleTip = Double(round(100*peopleTip)/100)
        numberOfPeopleLabel.text = "$" + String(roundedPeopleTip)
        print(roundedPeopleTip)
        
        let twentyFiveTip = (0.25 * Double(textField.text!)!)
        let perPerson = Double(twentyFiveTip) / Double(numberOfPeople.text!)!
        let roundedPerPerson = Double(round(100*perPerson)/100)
        print(roundedPerPerson)
        tipPerPerson.text = "$" + String(roundedPerPerson)
    }
    
    func resetButtonImageFifteen()
    {
        let tenUnSelect = UIImage(named: "10usi") as UIImage!
        buttonPictureTen.setImage(tenUnSelect, for: UIControlState())
        let twentyUnSelect = UIImage(named:"20usi") as UIImage!
        buttonPictureTwenty.setImage(twentyUnSelect, for: UIControlState())
        let twentyFiveUnSelecet = UIImage(named: "25usi")
        buttonPictureTwentyFive.setImage(twentyFiveUnSelecet, for: UIControlState())
    }
    func resetButtonImageTen()
    {
        let fifteenUnSelect = UIImage(named: "15usi") as UIImage!
        buttonPicture.setImage(fifteenUnSelect, for: UIControlState())
        let twentyUnSelect = UIImage(named:"20usi") as UIImage!
        buttonPictureTwenty.setImage(twentyUnSelect, for: UIControlState())
        let twentyFiveUnSelecet = UIImage(named: "25usi")
        buttonPictureTwentyFive.setImage(twentyFiveUnSelecet, for: UIControlState())
    }
    func resetButtonImageTwenty()
    {
        let tenUnSelect = UIImage(named: "10usi") as UIImage!
        buttonPictureTen.setImage(tenUnSelect, for: UIControlState())
        let fifteenUnSelect = UIImage(named:"15usi") as UIImage!
        buttonPicture.setImage(fifteenUnSelect, for: UIControlState())
        let twentyFiveUnSelecet = UIImage(named: "25usi")
        buttonPictureTwentyFive.setImage(twentyFiveUnSelecet, for: UIControlState())
    }
    func resetButtonImageTwentyFive()
    {
        let tenUnSelect = UIImage(named: "10usi") as UIImage!
        buttonPictureTen.setImage(tenUnSelect, for: UIControlState())
        let twentyUnSelect = UIImage(named:"20usi") as UIImage!
        buttonPictureTwenty.setImage(twentyUnSelect, for: UIControlState())
        let fifteenUnSelecet = UIImage(named: "15usi")
        buttonPicture.setImage(fifteenUnSelecet, for: UIControlState())
    }
   
    func numberOfPeopleTip()
    {
        let peopleTip = Int(numberOfPeople.text!)!
        numberOfPeopleLabel.text = "$" + String(peopleTip)
    }
    
}

