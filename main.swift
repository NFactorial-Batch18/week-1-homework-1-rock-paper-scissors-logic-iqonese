let choices = ["r", "p", "s"]

   // I am certain
var userInput: String? = ""
print("Hello to our mini game. I dare you to win our highly-trained console!")
print("If you already feel hopeless, press 0")
while (userInput! != "0") {
    print("Please pick from 'r', 'p', 's': ")
    while true {
        userInput = readLine()
        if choices.contains(userInput!) {
            break
        }
        if (userInput! == "0") {break}
        print("C'mon, don't embarrass yourself, pick one from the list, dude...")
    }
    if userInput! == "0" {
        print("It has been a pleasure to witness you being beaten by the computer. See you later, nerd!")
        break}
    
    let userChoice: String = userInput!
    let computerMove = choices.randomElement()!
    if (userChoice == computerMove) {
        print("Both picked \(userChoice). The game is draw!")
        continue
    }
    else {
        print("You picked: \(userChoice) and the computer picked: \(computerMove)")
    }
    
    
    switch userChoice {
    case "r":
            if computerMove == "s" {win()}
            else {lose()}
        
    case "p":
        if computerMove == "s" {lose()}
        else {win()}
    
    case "s":
        if computerMove == "p" { win()}
        else {lose()}
    default: print("")
}

}


func win(){print("You have won! What a luck \n")}
func lose(){print("Shame on you. You've just lost to the computer! \n")}



//while
