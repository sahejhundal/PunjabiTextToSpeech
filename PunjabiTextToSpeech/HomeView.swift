//
//  SwiftUIView.swift
//  PunjabiTextToSpeech
//
//  Created by DON on 11/28/22.
//

import SwiftUI

struct HomeView: View {
    @StateObject var vm = PunjabiTTS()
    var body: some View {
        VStack(alignment: .center){
            TextField("Type ਪੰਜਾਬੀ here", text: $vm.punjabiInputText).multilineTextAlignment(.center)
                .font(.system(size: 30, weight: .black))
            Text(vm.lastOutput).foregroundColor(.red)
            Button {
                vm.submitText()
            } label: {
                Text("Speak")
            }
            .padding(.top)
        }
        .padding()
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
