//
//  AudioPlayer.swift
//  Restart
//
//  Created by Elexoft on 14/02/2025.
//

import Foundation
import AVFoundation

var audioPlayer: AVAudioPlayer!

func playSound(soundName: String) {
    // Here assigning the location of C.wav in our project to the url
    let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
    // Here we tell the player this is the audio we want to play
    audioPlayer = try! AVAudioPlayer(contentsOf: url!)
    // Here playing the sound
    audioPlayer.play()
}

func playSound(sound: String, type: String) {
    if let path = Bundle.main.path(forResource: sound, ofType: type) {
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer.play()
        } catch {
            print("Could not play the sound file.")
        }
    }
}
