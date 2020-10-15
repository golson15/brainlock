//
//  ViewController.swift
//  BrainLockNow
//
//  Created by Grace Olson on 8/1/20.
//  Copyright © 2020 Grace Olson. All rights reserved.
//

import UIKit

class BrainLock {
    var categoryName: String?
    var categoryType: String?
    var categoryText: String?
    var categoryIndex: Int?
    
    init(ctName: String, ctType: String, ctText: String, ctIndex: Int) {
        self.categoryName = ctName
        self.categoryType = ctType
        self.categoryText = ctText
        self.categoryIndex = ctIndex
    }
}

var categoryArray = [BrainLock]()

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tblBrainLock: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.barTintColor = UIColor.black
        navigationController?.navigationBar.tintColor = UIColor.white
        navigationController?.navigationBar.topItem?.title = "Home"
    
        // Do any additional setup after loading the view.
        
        let intro = BrainLock(ctName: "Intro", ctType: "Brain Lock", ctText: "What is brain lock? A method of creating and memorizing passwords using the safest storage place possible— your brain. Why did I make this? I personally struggle with passwords and wanted to help myself and others protect themselves from the dangers of the internet. True privacy is achieved when using the built in human encryption of a person’s unique perspective. How does it work? Through a number of exercises, you are taken through effective ways of creating unique passwords and memorizing them using creative and innovative techniques. How to use this app: Go through this app and utilize the steps, methods, and techniques for each password you need to create and memorize.", ctIndex: 0)
        categoryArray.append(intro)
        
        let step1 = BrainLock(ctName: "Step 1", ctType: "Creating", ctText: "Creating the password: Make the password as long as possible to the extent that you can still remember it. Try to aim for 30 characters.", ctIndex: 1)
        categoryArray.append(step1)
        
        let methodA = BrainLock(ctName: "   Method A", ctType: "      Two Memories", ctText: "Combining two memories: What are 2 of your unique memories? Pick a word or phrase from each that sums them up. Combine the two words or phrases to create your password. For example, imagine you broke your arm when you were 7. That’s your first memory. Next, imagine you went to Camp Winnemucca when you were 15. Your password could be armCamp, but a better one would be brokenWinnemucca.", ctIndex: 2)
        categoryArray.append(methodA)
        
        let methodB = BrainLock(ctName: "   Method B", ctType: "      Two Realizations", ctText: "Combining two realizations: What are 2 realizations you’ve had? Pick a word or phrase from each that sums them up and put them together. For example, your first realization might have been when you were younger and you figured out that you liked cats more than dogs. Your second realization could be when you became an adult and realized you wanted to live in an apartment rather than a house. Your password could be catApartment.", ctIndex: 3)
        categoryArray.append(methodB)
        
        let methodC = BrainLock(ctName: "   Method C", ctType: "      Story", ctText: "Creating a story: Come up with a main character’s name and a plot. Combine the main character's name with a word or phrase that sums up the plot of your story. For example, imagine your main character’s name is Nancy and she is going on a quest from Michigan to California to find someone to love. Your password could be nancyRoadtrip.", ctIndex: 4)
        categoryArray.append(methodC)
        
        let step2 = BrainLock(ctName: "Step 2", ctType: "Linking To Service", ctText: "Linking the password to the service: Think about the service you are making this password for. How can you incorporate it into your password? For example, what is the first thing that comes to your mind when you think of this service? Put that word or phrase at the beginning or end of your 2 memories, realizations, or story combination. For example, say there was a social media named SocialTree. The first thing that could come to your head when thinking of trees is bark, but what’s something even stronger? Maybe a type of tree like redwood. You could then add redwood to the beginning or end of your password.", ctIndex: 5)
        categoryArray.append(step2)
        
        let step3 = BrainLock(ctName: "Step 3", ctType: "Password Strength", ctText: "Making the password strong: For services that require it, use capital letters, numbers, and punctuation to help make the password strong. Look at your keyboard and think of clever ways you could replace letters with numbers or punctuation. The more creative you are, the safer your password will be. For capitalization, adopt one of these techniques-- capitalize the first letter, capitalize the last letter, or use Camel Case (where you capitalize the first letter of each word after the first word). The way to keep them easy to remember is to have a consistent system that is personal to you that you use in each creation of your passwords.", ctIndex: 6)
        categoryArray.append(step3)
        
        let step4 = BrainLock(ctName: "Step 4", ctType: "Memorization", ctText: "Memorization: You may find yourself overwhelmed by the sheer number of passwords needed for all of your services. If this is the case, feel free to use one of the many password managers available. These methods of password generation and memorization can help you with your main password required to log into your password manager. The key is to make every password different for each service to protect yourself. If this means using a password manager, go for it.", ctIndex: 7)
        categoryArray.append(step4)
        
        let techniqueA = BrainLock(ctName: "    Technique A", ctType: "         Method of Loci", ctText: "Method of Loci: This is a technique where you visualize a room in your house and place each word on a different piece of furniture. That way when you are trying to remember it later, you just visualize that room again, and the words will be easier to remember.", ctIndex: 8)
        categoryArray.append(techniqueA)
        
        let techniqueB = BrainLock(ctName: "    Technique B", ctType: "         Draw It", ctText: "Draw it: Try and represent your password in picture form. That will help solidify the words by having you think about them in a tangible way.", ctIndex: 9)
        categoryArray.append(techniqueB)
        
        let techniqueC = BrainLock(ctName: "    Technique C", ctType: "         Quiz Yourself", ctText: "Quiz yourself: Write down the password on a piece of paper and try to memorize it. Then cover the word up and try and spell it out loud or write it somewhere else on the page without looking at the word you covered up. Repeat this until you’ve memorized it.", ctIndex: 10)
        categoryArray.append(techniqueC)
        
        let techniqueD = BrainLock(ctName: "    Technique D", ctType: "         Repetition", ctText: "Repetition: Say the word to yourself as many times as it takes for you to remember it. As a rule of thumb, three times often works. You can also spell it out loud three times or write it down three times.", ctIndex: 11)
        categoryArray.append(techniqueD)
        
        let techniqueE = BrainLock(ctName: "    Technique E", ctType: "         First Letters", ctText: "First Letters: Write down the first letter of each word of your password. This can help serve as a trigger for you to remember the rest of the password later on when you are trying to remember it. If you can remember the first letter of each word from the password you created, it will spark the rest of the words which will make it easier to remember the whole thing. Write these letters down and try to memorize them using the other techniques.", ctIndex: 12)
        categoryArray.append(techniqueE)
        
        let techniqueF = BrainLock(ctName: "    Technique F", ctType: "         Visualization", ctText: "Visualization: Close your eyes and visualize the password. This will help you recall the word when you are trying to remember it later because you’ve worked to picture the word in advance.", ctIndex: 13)
        categoryArray.append(techniqueF)
        
        let techniqueG = BrainLock(ctName: "    Technique G", ctType: "         Encoding", ctText: "Encoding: Think about how each of your 5 senses relate to the words in your password. Think about each memory, realization, or story and how your sight, smell, sound, taste, and touch related to it. This will help create an overall memorable picture for you to latch onto later when trying to remember.", ctIndex: 14)
        categoryArray.append(techniqueG)
        
        let techniqueH = BrainLock(ctName: "    Technique H", ctType: "         Potential Pitfalls", ctText: "Potential Pitfalls: Notice your potential pitfalls for forgetting. Maybe you’ll misplace the true word with a synonym of that word. Be aware of these pitfalls and think of what words you might accidentally remember instead and consciously distinguish between them.", ctIndex: 15)
        categoryArray.append(techniqueH)
        
        let techniqueI = BrainLock(ctName: "    Technique I", ctType: "         Sleep On It", ctText: "Sleep On It: Go over your password again the next day after a good night of sleep. Sleeping on something solidifies your memory of it, so wait to tear up the sheet you use to write the password down until the next day. Then go over as many of these memorization techniques as you can again to make sure you have it down.", ctIndex: 16)
        categoryArray.append(techniqueI)
        
        let techniqueJ = BrainLock(ctName: "    Technique J", ctType: "         Song", ctText: "Make it into a song: Add a melody to the password or put it to the tune of your favorite song. This way although you might not remember the words themselves at first, try and remember the song and the password you put the music to will likely follow.", ctIndex: 17)
        categoryArray.append(techniqueJ)
        
        let techniqueK = BrainLock(ctName: "    Technique K", ctType: "         Do Them All", ctText: "Do them all: I recommend that you do all of the memorization techniques to really solidify your password.", ctIndex: 18)
        categoryArray.append(techniqueK)
        
        let summary = BrainLock(ctName: "Summary", ctType: "Overall", ctText: "Overall: Your memory is very powerful. If you are afraid you might forget your passwords, it is understandable, but try to come back to this book as often as you can and give yourself a refresher. The more often you come back to the passwords, the more solidified they will become in your memory. Equipped with these techniques, you have access to the most secure password storage place available-- your brain.", ctIndex: 19)
        categoryArray.append(summary)
        
        tblBrainLock.dataSource = self
        tblBrainLock.delegate = self
        
    }

    //MARK - UITableView methods
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categoryArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "brainlocktable")
        if cell == nil {
            cell = UITableViewCell(style: .subtitle, reuseIdentifier: "brainlocktable")
        }
        
        cell?.textLabel?.text = categoryArray[indexPath.row].categoryName
        cell?.detailTextLabel?.text = categoryArray[indexPath.row].categoryType
        
        cell?.textLabel?.font = UIFont(name: (cell?.textLabel?.font.fontName)!, size:30)
        
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        performSegue(withIdentifier: "showdetail", sender: self)
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? DetailVC {
            destination.category = categoryArray[(tblBrainLock.indexPathForSelectedRow?.row)!]
            tblBrainLock.deselectRow(at: tblBrainLock.indexPathForSelectedRow!, animated: true)
        }
    }
    
}

