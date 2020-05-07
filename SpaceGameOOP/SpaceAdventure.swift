//
//  SpaceAdventure.swift
//  SpaceGameOOP
//
//  Created by Mochamad Nurkhayal Kadafi on 06/05/20.
//  Copyright © 2020 Manusia Apple. All rights reserved.
//

import Foundation

class SpaceAdventure{
    let planetarySystem:PlanetarySystem
    
    init(planetarySystem: PlanetarySystem) {
        self.planetarySystem = planetarySystem
    }
    
    private func displayIntroduction(){
        print("Welcome to the \(planetarySystem.name)!")
        print("There are \(planetarySystem.planets.count) planets to explore")
    }
    
    private func responseToPrompt(prompt:String) -> String{
        print(prompt)
        return getUserInput()
    }
    
    private func greetAdventure(){
        let name = responseToPrompt(prompt: "What is your name?")
        print("Nice to meet you \(name). My name is Eliza, I'm an old friend of Siri.")
    }
    
    private func visit(planetName:String){
        print("Traveling to \(planetName) ...")
        
        for planet in planetarySystem.planets{
            if planetName == planet.name{
                print("Arrived at \(planet.name). \(planet.description)")
            }
        }
    }
    
    private func determineDestination(){
        var decision = ""
        
        while !(decision == "Y" || decision == "N"){
            decision = responseToPrompt(prompt: "Shall I randomly choose a planet to visit? (Y or N")
            if decision == "Y"{
                if let planet = planetarySystem.randomPlanet{
                    visit(planetName: planet.name)
                }else{
                    print("Sorry but there are not planet in this system")
                }
            }else if decision == "N"{
                let planetName = responseToPrompt(prompt: "OK, name the planet your would like to visit.")
                visit(planetName: planetName)
            }else{
                print("Sorry I didn't get that.")
            }
        }
    }
    
    func start(){
        displayIntroduction()
        greetAdventure()
        if !planetarySystem.planets.isEmpty{
            print("Let's go on an adventure")
            determineDestination()
        }
    }
}
