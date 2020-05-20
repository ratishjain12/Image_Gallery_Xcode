//
//  ContentView.swift
//  Practice
//
//  Created by Ratish on 18/05/20.
//  Copyright © 2020 Ratish. All rights reserved.
//

import SwiftUI


struct ContentView: View {
    var datas :[Data]=dataList
    var body: some View {
            VStack {
            Text("Image-Gallery")
                .fontWeight(.bold)
                .font(.largeTitle)
                .padding(.top, 40.0)
                
                ScrollView(.horizontal){
                    HStack(alignment: .center, spacing:2){
                    ForEach(datas){item in
                        Card(data :item)
                            
              }
            }
          }
      }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(datas:dataList)
    }
}
}
