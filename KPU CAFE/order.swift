//
//  order.swift
//  KPU CAFE
//
//  Created by Jaskirat Mangat on 2021-03-28.
//

import UIKit
import Firebase
import FirebaseDatabase
class order: UIViewController {
    var ref: DatabaseReference!
    let user = Auth.auth().currentUser
    var uid : String = ""
    var total : Int=0
    @IBOutlet weak var valuelabel: UILabel!
    @IBOutlet weak var stepper: UIStepper!
    @IBOutlet weak var pizzaSteper: UIStepper!
    @IBOutlet weak var CoffeeStepper: UIStepper!
    @IBOutlet weak var popStepper: UIStepper!
    @IBOutlet weak var potineStepper: UIStepper!
    @IBOutlet weak var sandwichStepper: UIStepper!
    @IBOutlet weak var cappucinoStepper: UIStepper!
    @IBOutlet weak var pizza: UILabel!
    @IBOutlet weak var coffee: UILabel!
    @IBOutlet weak var pop: UILabel!
    @IBOutlet weak var poutine: UILabel!
    @IBOutlet weak var sandwich: UILabel!
    @IBOutlet weak var cappucino: UILabel!
    var pizz = 0
    var coff = 0
    var burger = 0

    var po = 0

    var  pou = 0

    var  sand = 0

    var  cap = 0

      
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ref = Database.database().reference()
        if let user = user {
          // The user's ID, unique to the Firebase project.
          // Do NOT use this value to authenticate with your backend server,
          // if you have one. Use getTokenWithCompletion:completion: instead.
            uid = user.uid
           
        
        }
        
        stepper.wraps = true
          stepper.autorepeat = true
          stepper.maximumValue = 10
    }

    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        valuelabel.text = Int(sender.value).description
    }
    
    @IBAction func PizzaChange(_ sender: UIStepper) {
        pizza.text = Int(sender.value).description
    }
    @IBAction func coffeChange(_ sender: UIStepper) {
        coffee.text = Int(sender.value).description
    }
    @IBAction func popChange(_ sender: UIStepper) {
        pop.text = Int(sender.value).description
    }
    @IBAction func poutineCange(_ sender: UIStepper) {
        poutine.text = Int(sender.value).description
    }
    @IBAction func sandwichChange(_ sender: UIStepper) {
        sandwich.text = Int(sender.value).description
    }
    @IBAction func cappucinoChange(_ sender: UIStepper) {
        cappucino.text = Int(sender.value).description
    }
    
    
    @IBAction func ORDER(_ sender: UIButton) {
        
        var tot: Int = 0
        
        burger = Int(valuelabel.text!)!

        pizz = Int(pizza.text!)!
        coff = Int(coffee.text!)!
        po = Int(pop.text!)!
        pou = Int(poutine.text!)!
        sand = Int(sandwich.text!)!
        cap = Int(cappucino.text!)!
        
        print(burger)
        
        self.ref.child("BURGER").child(uid).setValue(burger)
        self.ref.child("PIZZA").child(uid).setValue(pizz)
        self.ref.child("COFFEE").child(uid).setValue(coff)
        self.ref.child("POP").child(uid).setValue(po)
        self.ref.child("POUTINE").child(uid).setValue(pou)
        self.ref.child("CAP").child(uid).setValue(cap)
        self.ref.child("SANDWICH").child(uid).setValue(sand)
            
//        let total = (burger*6.99) + (pizz*9.99) + (coff*1.99) + (po*0.99) + (pou*6.99) + (sand*6.99) + (cap*1.99)
        
        
        self.performSegue(withIdentifier: "goToresult", sender: self)
        
    }
    
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "goToresult"{
//            let destinationVC = segue.destination as! resultViewController
//            destinationVC.total = total
//            destinationVC.burger = burger
//            destinationVC.pizz = pizz
//            destinationVC.coff = coff
//            destinationVC.po = po
//            destinationVC.sand = sand
//            destinationVC.cap = cap
//
//
//        }
//    }
    
    
}






