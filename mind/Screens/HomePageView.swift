//
//  HomePageView.swift
//  mind
//
//  Created by tasneem daloun on 22/09/2023.
//

import SwiftUI

struct HomepageView: View {
    func button1( _ type: String, colour: Color) -> some
    View{
        Button{
            print("whatever")
        } label: {
            VStack{
                Text("\(type)")
                    .frame(width: 350, height: 110)
                    .padding(10)
                    .font(.title)
                    .bold()
                    .multilineTextAlignment(.leading)
                    .background(colour)
                    .foregroundColor(.white)
                    .cornerRadius(30)
            }
        }
    }
  @State private var name = "tasneem"
    
    var body: some View {
        NavigationStack{
            
            VStack (alignment: .center) {
                Text("**welcome \(name)**")
                    .font(.title)
                    .multilineTextAlignment(.leading)
                Text("**Choose the dimension of health you want to improve!**")
                    .padding(10)
                    .background(.gray)
                    .font(.subheadline)
                    .multilineTextAlignment(.center)
                    .bold()
                    .cornerRadius(50)
                    .foregroundColor(.white)
                
                VStack {
                    button1("Physical Health", colour: Color("PhysicalColor"))
                        .padding(10)
                    button1("Mental Health", colour: Color("MentalColor"))
                    
                    button1("Social Health", colour: Color("SocialColor"))
                        .padding(10)
                    button1("Emotional Health", colour: Color("EmotionalColor"))
                }
                
            } .navigationTitle("Home")
        }
    }
}

struct HomepageView_Previews: PreviewProvider {
    static var previews: some View {
        HomepageView()
    }
}
