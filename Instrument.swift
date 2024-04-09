class Music {
    let notes : [String]
    init(notes:[String]) {
        self.notes=notes
    }

    func prepared() -> String {
        return notes.joined(separator:" ")
    }
}
class Intstrument {
    let brand : String
    init(brand:String) {
        self.brand=brand
    }

    func tune() -> String {
        fatalError("Implement this method for \(brand)")
    }
    func play(_ music: Music) -> String {
        return music.prepared()
    }
    func perform(_ music: Music) {
         print(tune())
         print(play(music))
    }
}

class Piano: Instrument {
  let hasPedals: Bool
  
  static let whiteKeys = 52
  static let blackKeys = 36
  
  init(brand: String, hasPedals: Bool = false) {
    self.hasPedals = hasPedals
  
    super.init(brand: brand)
  }
  
  
  override func tune() -> String {
    return "Piano standard tuning for \(brand)."
  }
  
  override func play(_ music: Music) -> String {
  
    let preparedNotes = super.play(music)
    return "Piano playing \(preparedNotes)"
  }

  func play(_ music: Music, usingPedals: Bool) -> String {
  let preparedNotes = super.play(music)
  if hasPedals && usingPedals {
    return "Play piano notes \(preparedNotes) with pedals."
  }
  else {
    return "Play piano notes \(preparedNotes) without pedals."
  }
}
}

let piano = Piano(brand: "Yamaha", hasPedals: true)
piano.tune()

let music = Music(notes: ["C", "G", "F"])
piano.play(music, usingPedals: false)

piano.play(music)

Piano.whiteKeys
Piano.blackKeys
