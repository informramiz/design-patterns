import UIKit
//------------Singleton pattern----------------//

//a simple data placeholder
struct Meme {
    let memeText: String
    let memedImage: UIImage
}

class Memes {
    //define an instance of this class with class scope
    static let shared = Memes()
    
    private var memes = [Meme]()
    
    //make the constructor/initializer private so no one can create
    //an instance of this class using syntax `Memes()`
    private init() {
        
    }
    
    func append(_ meme: Meme) {
        memes.append(meme)
    }
    
    func clear() {
        memes.removeAll()
    }
    
    func getMemes() -> [Meme] {
        return memes
    }
}

//get instance of Memes, now you can't create instance with code `let memes1 = Memes()`
let memes1 = Memes.shared
//all calls to Memes use same shared instance
let memes2 = Memes.shared
