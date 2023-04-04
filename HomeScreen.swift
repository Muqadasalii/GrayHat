//
//  HomeScreen.swift
//  Grayhat Project
//
//  Created by Mac on 31/03/2023.
//

import SwiftUI

struct HomeScreen: View {
    @State private var selectedIndex : Int = 0
    @State var textfield:String = ""
    private let categories = ["Smart watches" , "Casio" , "Tisto" , "Siko"]
    var body: some View {
        ZStack{
            Rectangle().fill(Color("Bg color")).edgesIgnoringSafeArea(.all)

            VStack {
                
                HStack {
                    Spacer()
                    HStack{
                        Image(systemName: "text.justify")
                            .font(.system(size: 40))
                    }
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    HStack {
                        Image(systemName: "magnifyingglass")
                        
                        TextField("", text: $textfield, prompt: Text("Search Product"))
                            .foregroundColor(Color.black)
                    }
                    .padding()
                    .frame(width: 250, height: 40, alignment: .leading)
                    .background(Color.white).cornerRadius(20)
                    .overlay(RoundedRectangle(cornerRadius: 20)
                                .stroke(lineWidth: 2)
                            .foregroundColor(Color.gray))
                    Spacer()
                }.padding()
                
                Text("find your suitable watch now.")
                    .font(.system(size: 50))
                    .fontWeight(.medium)
                Spacer()
                HStack{
                    ForEach(0 ..< categories.count) { i in
                       CategoryView(isActive: i == selectedIndex, text: categories[i])
                            .onTapGesture {
                                selectedIndex = i
                            }
                    }
                }
                ScrollView(.vertical, showsIndicators: false) {
                    VStack{
                        ForEach(0 ..< 3) { Index in
                            HStack{
                                ProductCardView(image: Image("\(Index + 1)"))
                                ProductCardView(image: Image("\(Index + 3)"))
                                //ProductCardView(image: Image(Index + 1))
                            }
                            
                        }
                    }
                }
                
                ExtractedView()
                
                
                
            }
            
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
        
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}

struct CategoryView: View {
    let isActive : Bool
    let text : String
    var body: some View {
        VStack(alignment: .leading, spacing: 0){
            Text(text)
                .font(.system(size: 18)).fontWeight(.medium)
                .foregroundColor(.gray)
                .foregroundColor(isActive ? Color("Primary") : Color.black.opacity(0.5))
            
            
            if(isActive){
                Color("Primary")
                    .frame(width: 45, height: 2)
                    .clipShape(Capsule())
            }
            
        }.padding(.trailing)
    }
}

struct ExtractedView: View {
    var body: some View {
        Spacer()
        Spacer()
        Spacer()
        Spacer()
        Spacer()
        Spacer()
        Spacer()
    }
}

struct ProductCardView: View {
    let image : Image
    var body: some View {
        VStack{
            VStack{
               image
                    .resizable().frame(width: 200, height: 150)
                Text("Apple Watch ")
                    .font(.title3)
                    .fontWeight(.bold)
                Text("series 1")
                    .fontWeight(.semibold)
                    .foregroundColor(.gray)
                    .padding()
                Text("$123") .fontWeight(.bold)
            }.background(Color.white).cornerRadius(20)
            
            
        }
    }
}
