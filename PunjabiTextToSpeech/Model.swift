import UIKit
import AVFoundation

class PunjabiTTS: ObservableObject{
    let speechSynthesizer = AVSpeechSynthesizer()
    @Published var punjabiInputText = ""
    @Published var punjabiParted : [String] = []
    var resText = ""
    @Published var lastOutput = ""
    
    private func PartOutPunjabiInput(){
        for i in self.punjabiInputText{
            for (_,x) in i.unicodeScalars.enumerated(){
                self.punjabiParted.append(String(x))
            }
        }
    }
    
    private func PartedToEnglish(){
        for i in self.punjabiParted{
            if akhar.keys.contains(i){
                if self.resText != "" && akhar[i]!.1 && !vowels.contains(String(self.resText.last!)){
                    self.resText = resText + "a"
                }
                resText = resText + String(akhar[i]!.0)
            }
            else{
                resText = resText + i
            }
        }
    }
    
    private func Speak(){
        let utterance = AVSpeechUtterance(string: resText)
        utterance.pitchMultiplier = 1.0
        utterance.rate = 0.5
        utterance.voice = AVSpeechSynthesisVoice(language: "hi-IN")
         
        speechSynthesizer.speak(utterance)
        lastOutput = resText
        resText = ""
        punjabiParted = []
    }
    
    func submitText(){
        PartOutPunjabiInput()
        PartedToEnglish()
        Speak()
    }
}
