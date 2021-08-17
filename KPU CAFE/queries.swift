//
//  queries.swift
//  KPU CAFE
//
//  Created by Jaskirat Mangat on 2021-03-29.
//

import UIKit
import Firebase
import FirebaseDatabase
class query: UIViewController {
    var ref: DatabaseReference!
    let user = Auth.auth().currentUser
    var uid : String = ""
    
    @IBOutlet weak var EMAIL: UITextField!
    
    @IBOutlet weak var QUERY: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        ref = Database.database().reference()
        if let user = user {
          // The user's ID, unique to the Firebase project.
          // Do NOT use this value to authenticate with your backend server,
          // if you have one. Use getTokenWithCompletion:completion: instead.
            uid = user.uid
           
        
        }
    }
    
    @IBAction func QUERYSUBMIT(_ sender: UIButton) {
        self.ref.child("EMAIL").child(uid).setValue(EMAIL.text)
        self.ref.child("QUERY").child(uid).setValue(QUERY.text)
        
    }
    
    
    
}
