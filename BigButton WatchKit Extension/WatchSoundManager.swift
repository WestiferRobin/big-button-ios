//
//  WatchSoundManager.swift
//  BigButton WatchKit Extension
//
//  Created by Wesley Webb on 9/27/21.
//

import AVFoundation

class WatchSoundManager : ObservableObject {
    var audioPlayer: AVAudioPlayer?

    func playSound(sound: String){
        let url = URL(string: sound)
        let data = try! Data(contentsOf: url!)
        audioPlayer = try! AVAudioPlayer(data: data)
        audioPlayer?.prepareToPlay()
        audioPlayer?.volume = 1.0
        audioPlayer?.play()
    }
}
