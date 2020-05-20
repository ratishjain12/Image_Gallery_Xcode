//
//  Card.swift
//  Practice
//
//  Created by Ratish on 20/05/20.
//  Copyright © 2020 Ratish. All rights reserved.
//

import SwiftUI

struct Card: View {
    @State private var isHearted = false;
    @State private var num = 999;
    let data:Data
    var body: some View {
        VStack{
        ZStack{
            Image(data.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(30)
                .padding([.leading, .bottom, .trailing])
                .shadow(radius:10)
            
                HStack(alignment: .center){
                    
                    
                    Text(data.name)
                    .font(.title)
                    .fontWeight(.heavy)
                    .foregroundColor(Color.white)
                    
                    
                    Button(action:{
                    self.isHearted.toggle()
                        if self.isHearted{
                            self.num+=1
                        }
                        else{
                            self.num-=1
                        }
                   }) {
                    if self.isHearted{
                       Image(systemName: "heart.fill")
                           .foregroundColor(Color.white)
                        .font(.headline)
                       
                    }
                    else{
                        Image(systemName: "heart")
                           .foregroundColor(Color.white)
                        .font(.headline)
            
                    }
                    
                }
                    Text(String(self.num))
                        .font(.headline)
                        .fontWeight(.heavy)
                        .foregroundColor(Color.white)
                        .padding(.top, 3.0)
                }.padding([.top, .leading], 30.0).offset(x:-90,y:180)
           

            }
        }
        }
    }


struct Card_Previews: PreviewProvider {
    static var previews: some View {
        Card(data:dataList[0])
            .previewLayout(.sizeThatFits)
    }
}
