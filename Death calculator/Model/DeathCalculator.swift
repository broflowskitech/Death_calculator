//
//  DeathCalculator.swift
//  Death calculator
//
//  Created by Jan B on 06/05/2020.
//  Copyright © 2020 broflowski. All rights reserved.
//

import UIKit

struct DeathCalculator {
    
    var deathYear: DeathYear?
    
    func getDeathYear() -> String {
   //     let deathYearStr = String(format: "%.f", deathYear?.value ?? "Invalid input") - this returns zero, why???
   //    print(deathYearStr)
   //         return deathYearStr
        return String(deathYear!.value) 
        
    }
    
    func getMessage() -> String {
        return deathYear?.funnyComment ?? "No Message"
    }
    
    func getColor() -> UIColor{
        return deathYear?.color ?? UIColor.blue
    }

    mutating func calculateDeath(age: Int, illness: Int){
        let deathYearValue = (age + illness)
        let expectedYearOfDeath = (100 - age)
         
         switch deathYearValue {
         case 60...1120:
             deathYear = DeathYear(color: #colorLiteral(red: 0.521568656, green: 0.1098039225, blue: 0.05098039284, alpha: 1), funnyComment: "You will die very soon", value: expectedYearOfDeath)
         case 50...60:
             deathYear = DeathYear(color: #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1), funnyComment: "Thats still fine", value: expectedYearOfDeath)
         case 30...50:
             deathYear = DeathYear(color: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1), funnyComment: "Long enough mate", value: expectedYearOfDeath)
         case 20...30:
             deathYear = DeathYear(color: #colorLiteral(red: 0.1960784346, green: 0.3411764801, blue: 0.1019607857, alpha: 1), funnyComment: "All ahead of you", value: expectedYearOfDeath)
         case 0...20:
             deathYear = DeathYear(color: #colorLiteral(red: 0.1019607857, green: 0.2784313858, blue: 0.400000006, alpha: 1), funnyComment: "How is that possible?", value: expectedYearOfDeath)
         default:
             print("No idea")
         }
    }
}
