//
//  ContentView.swift
//  SwiftUIUserDefaultSample
//
//  Created by Daisuke TONOSAKI on 2019/11/29.
//  Copyright © 2019 Daisuke TONOSAKI. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var text: String = UserDefaultManager.sharedInstance.text
    
    var body: some View {
        VStack {
            Spacer().frame(height: 10)
            
            TextField("input here",
                      text: $text,
                      onEditingChanged: { changed in
                        if !changed {
                            UserDefaultManager.sharedInstance.text = self.text
                            print("\(self.text)")
                        }
            }, onCommit: {
                
            }).padding()
            
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
