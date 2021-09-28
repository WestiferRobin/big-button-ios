//
//  WatchSoundManager.swift
//  BigButton WatchKit Extension
//
//  Created by Wesley Webb on 9/27/21.
//

import AVFoundation

class WatchSoundManager : ObservableObject {
    var audioPlayer: AVPlayer?

    func playSound(sound: String){
        if let url = URL(string: sound) {
            let asset = AVAsset(url: url)
            let assetKeys = [
                    "playable",
                    "hasProtectedContent"
                ]
            let playerItem = AVPlayerItem(asset: asset, automaticallyLoadedAssetKeys: assetKeys)
            self.audioPlayer = AVPlayer(playerItem: playerItem)
        }
    }
}
