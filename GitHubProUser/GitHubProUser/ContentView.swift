//
//  ContentView.swift
//  GitHubProUser
//
//  Created by Lucas Parreira on 25/09/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading){
            CircleView()
            
            HeaderLabel()
                .padding(.bottom,12)
            FeaturesView()
            
            HStack(alignment: .center){
                Spacer()
                Button(action:{
                    //
                }, label: {
                    Text("$3.99 per month")
                        .foregroundColor(.white)
                        .bold()
                        .frame(width:200, height:50)
                        .background(Color.blue)
                        .cornerRadius(8)
                })
                Spacer()
            }
            HStack(alignment:.center){
                Spacer()
                Link("Terms of Services", destination: URL(string: "https://github.com")!)
                    .foregroundColor(Color.gray)
                    .padding(3)
                Link("Privacy Policy", destination: URL(string: "https://github.com")!)
                    .foregroundColor(Color.gray)
                    .padding(3)
                Link("Details", destination: URL(string: "https://github.com")!)
                    .foregroundColor(Color.gray)
                    .padding(3)
                Spacer()
            }
            .padding()
        }.padding()
    }
}

struct FeaturesView: View{
    
    let features: [String] = [
        "GitHub support via email",
        "Required pull request reviewers",
        "GitHub Pages",
        "Wiki",
        "Protected branches",
        "Code owners",
        "Auth-linked references",
        "Multiple pull request reviwers"
    ]
    
    var body: some View{
        ScrollView(.vertical){
            ForEach(features, id: \.self){ feature in
                HStack{
                    Image(systemName: "checkmark.circle")
                        .foregroundColor(Color(UIColor.systemGray2))
                        .padding(.trailing,8)
                    
                    Text(feature)
                        .bold()
                        .font(.system(size: 22))
                        .opacity(0.7)
                    Spacer()
                }
                .padding([.top,.bottom],1)
                .padding([.leading,.trailing],4)
            }
        }
    }
}
struct HeaderLabel: View{
    var body: some View{
        Text("Github Pro")
            .bold()
            .font(.system(size:32, weight:.bold,design: .default))
        
        Text("Get advanced tools for your private repositories with GitHub Pro")
            .opacity(0.7)
            .font(.system(size:22, weight:.bold,design: .default))
            .padding(.top,6)
    }
}
struct CircleView: View {
    var body: some View {
        ZStack {
            
            Circle()
                .frame(width:80, height: 80)
                .foregroundColor(Color.purple)
            
            Image(systemName: "star.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50, height: 50)
                .foregroundColor(.white)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
