//
//  AdventureLogic.swift
//  assignment5
//
//  Created by user247998 on 2/10/24.
//

import Foundation

struct AdventureLogic {
    
    var adventureIndex : Int = 0
    var imageIndex : Int = 0
    
    let adventure = [
                Adventure("You discover an old map in the attic that points to a location marked as \"Grandpa's Workshop.\"",
                         "Follow the map on foot",
                         "Digitize the map"),
                Adventure("You decide to navigate on foot, trusting the map's directions. Your pace is slow, and as you follow the map you reach a crossroads. One direction leads into a forest. The other follows along a river.",
                         "Go through the forest",
                         "Follow the river"),
                Adventure("You take a picture of the map and use your smartphone's navigation app to follow the route. You navigate quickly, and as you go forward you reach a crossroads. One direction leads into a forest. The other follows along a river.",
                         "Go through the forest",
                         "Follow the river"),
                Adventure("While navigating through the forest, you come upon a fallen tree. The path ahead is blocked.",
                         "Look for a way around the tree",
                         "Turn back and take the path by the river"),
                Adventure("While following the river, the path leads you to a broken bridge. There is no way to cross it safely.",
                         "Look for a way around the bridge",
                         "Turn back and take the path through the forest"),
                Adventure("After looking around a bit, you find a way through the underbrush off to the left. Continuing on your journey, you eventually come to the entrance of a cave.",
                         "Enter the cave",
                         "Explore the surroundings"),
                Adventure("You decide to turn around and try the path that follows the river. After walking the path by the river for a while, you encounter a broken bridge with no way to cross. You have no choice but to find a way around the bridge. Eventually you decide the only way is to jump in the river and swim past the bridge. Continuing on your journey, you eventually come to the entrance of a cave.",
                         "Enter the cave",
                         "Explore the surroundings"),
                Adventure("Eventually you decide the only way past the bridge is to jump in the river and swim. You make it to the other side of the bridge and climb out of the water. Continuing on your journey, you eventually come to the entrance of a cave.",
                         "Enter the cave",
                         "Explore the surroundings"),
                Adventure("You decide to turn around, and take the path through the forest. After a while, you come to a fallen tree that blocks the path. At this point, you have no choice but to find a way around the fallen tree and after looking there is a way through some thick underbrush to the left of the fallen tree. Continuing on your journey, you eventually come to the entrance of a cave.",
                         "Enter the cave",
                         "Explore the surroundings"),
                Adventure("At first the cave appears shallow and empty. You spot something odd on the wall, and after closer inspection you find a hidden passage. The passage leads to a room filled with tools and equipment. This must be Grandpa's workshop!",
                         "",
                         ""),
                Adventure("You take a moment to look around outside. You find nothing of interest on the outside of the cave and turn to enter the cave. At first the cave appears shallow and empty. You spot something odd on the wall, and after closer inspection you find a hidden passage. The passage leads to a room filled with tools and equipment. This must be Grandpa's workshop!",
                         "",
                         "")
            ]
    
    mutating func compareUserResponse(_ response: String) -> Int {
        if response == adventure[adventureIndex].option_one {
            return 1
        } else {
            return 2
        }
    }
    
    mutating func increaseIndex(_ ans: String) {
        switch adventureIndex {
        case 0, 2, 8:
            if compareUserResponse(ans) == 1 {
                adventureIndex += 1
            } else {
                adventureIndex += 2
            }
        case 1, 3, 7:
            if compareUserResponse(ans) == 1 {
                adventureIndex += 2
            } else {
                adventureIndex += 3
            }
        case 4, 6:
            if compareUserResponse(ans) == 1 {
                adventureIndex += 3
            } else {
                adventureIndex += 4
            }
        case 5:
            if compareUserResponse(ans) == 1 {
                adventureIndex += 4
            } else {
                adventureIndex += 5
            }
        default:
            print("The End")
        }
    }
    
    func getNextAdventure() -> String {
        return adventure[adventureIndex].adventure
    }
    
    func getOptionOne() -> String {
        return adventure[adventureIndex].option_one
    }
    
    func getOptionTwo() -> String {
        return adventure[adventureIndex].option_two
    }
    
    mutating func getImageName() -> Int {
        imageIndex += 1
        return imageIndex
    }
}
