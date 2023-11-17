//
//  ContentView.swift
//  L3 Demo
//
//  Created by Angel Fernandes on 11/5/23.
//

import SwiftUI

struct ContentView: View {
    @State var pic = "isgm1"
    var body: some View {
        ZStack{
            Color(.systemMint).ignoresSafeArea()
            VStack(alignment: .leading, spacing: 20.0) {
                Image(pic)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(15)
                HStack{
                    Button(action: {
                        prev()
                    }, label: {
                        Image(systemName: "arrow.left")
                    })
                    Spacer()
                    Button(action: {
                        next()
                    }, label: {
                        Image(systemName: "arrow.right")
                    })
                }
                HStack{
                    Text("Isabella Stewart Gardner Museum")
                        .font(.title)
                        .fontWeight(.bold)
                    
                    Spacer()
                    
                    VStack{
                        HStack{
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                            Image (systemName:
                                    "star.leadinghalf.filled")
                        }
                        Text("(Ratings 103)")
                    }
                    .foregroundColor(.orange)
                    .font(.caption)
                }
                Text("\"for the education and enjoyment of the public forever\"")
                HStack{
                    Spacer()
                    Image(systemName: "fork.knife")
                    Image(systemName: "binoculars.fill")
                }
                .foregroundColor(.gray)
                .font(.caption)
            }
            .padding()
            .background(Rectangle()
                .foregroundColor(.white))
                .cornerRadius(15)
                .shadow(radius: 15 )
            .padding()
        }
    }
    
    func next() {
        if let numberString = pic.components(separatedBy: "isgm").last,
           let picValue = Int(numberString) {
            if(picValue+1 < 23){
                pic = "isgm\(picValue+1)"
            }
        }
    }

    
    func prev(){
        if let numberString = pic.components(separatedBy: "isgm").last,
           let picValue = Int(numberString) {
            if(picValue-1 > 0){
                pic = "isgm\(picValue-1)"
            }
        }
    }
}

#Preview {
    ContentView()
}
 
