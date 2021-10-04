//
//  PhoneSoundManager.swift
//  BigButton
//
//  Created by Wesley Webb on 10/3/21.
//

import AVFoundation

class PhoneSoundManager : ObservableObject {
    var audioPlayer: AVAudioPlayer?

    // NOTE: Check if we can get this data ahead of time
    func playSound(sound: String){
        let url = URL(string: sound)
        let data = try! Data(contentsOf: url!)
        audioPlayer = try! AVAudioPlayer(data: data)
        audioPlayer?.prepareToPlay()
        audioPlayer?.volume = 1.0
        audioPlayer?.play()
    }
}
