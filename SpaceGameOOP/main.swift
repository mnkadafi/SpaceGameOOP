//
//  main.swift
//  SpaceGameOOP
//
//  Created by Mochamad Nurkhayal Kadafi on 06/05/20.
//  Copyright © 2020 Manusia Apple. All rights reserved.
//

import Foundation

let systemName = "Solar System"
let planetData = [
    "Mercury":"A very hot planet, closest to the sun",
    "Venus":"It's very cloudy here!",
    "Earth":"There is something very familiar about this planet",
    "Mars":"Known as the red planet",
    "Jupiter":"A gas giant, with a noticeable red spot",
    "Saturn":"This planet has beutiful rings around it",
    "Uranus":"Strangely, this planet rotates around on its inside",
    "Neptune":"A very cold planet, furthes from the sun",
]

let planets = planetData.map {name, description in Planet(name: name, description: description)}
//let planet = planets[0].description
//print(planet)

let solarSystem = PlanetarySystem(name: systemName, planets: planets)

let adventure = SpaceAdventure(planetarySystem: solarSystem)

adventure.start()
