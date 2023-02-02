//
//  ContentView.swift
//  v2Task
//
//  Created by Guru Mahan on 19/12/22.
//

import SwiftUI

struct SigninView: View {
    
   @State var emailText:String = ""
   @State var passWordText:String = ""
    
    

    var body: some View {
        
        ZStack {
//            Color.blue
            LinearGradient(colors: [Color(hex: "1A7BDC"), Color(hex: "56B8FF")], startPoint: .leading, endPoint: .trailing)
                .ignoresSafeArea()
            VStack {
                HStack{
                    
                    Image(systemName: "globe")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 40,height: 50,alignment: .center)
                        .foregroundColor(Color.white)
                    
                    Text("DigiClass")
                        .foregroundColor(Color.white)
                        .fontWeight(.bold)
                }
                bodyView
                    .frame(width: 400, height: 380)
                    .frame(width: 380)
                    .background(Color.white)
                    .cornerRadius(10)
     
            }
        }
    }
    
    @ViewBuilder var bodyView: some View{
        
        VStack(alignment:.center){
            Text("Sign Up")
                .font(.system(size: 20))
                .padding()
            VStack(alignment:.leading){
                Text("Email")
                    .font(.system(.subheadline))
//                    .padding(.leading,-13)
                TextField("Enter Email Id", text: $emailText)
                    .font(.system(.subheadline))
                    .frame(width:.infinity,height: 40,alignment:.leading)
                    .overlay(RoundedRectangle(cornerRadius:5)
                    .stroke(Color.gray,lineWidth: 2)
                   )
                    
                Text(
                    "Temporary PassWord")
                .font(.system(.subheadline))
//                .padding()
                .padding(2)
                TextField("Enter PassWord", text: $passWordText)
                    .font(.system(.subheadline))
                    .frame(width: .infinity,height: 40)
                    .overlay(RoundedRectangle(cornerRadius:5).stroke(Color.gray,lineWidth: 2))
            }
            .padding(10)
            
            
            Button {
                
            } label: {
                Text("Sing up")
                  
                    .frame(width: 240,height:40)
                    .foregroundColor(.white)
                    .background(.blue)
                    .cornerRadius(5)
                    .padding(.horizontal,40)
            }
            Divider()
            Text("Already have an account?")
            .padding(2)
        Button {
            
        } label: {
            Text("Login")
        }
        Spacer()
        }
        .padding()
 }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        SigninView()
        
    }
}

extension Color {
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        let a, r, g, b: UInt64
        switch hex.count {
        case 3: // RGB (12-bit)
            (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6: // RGB (24-bit)
            (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8: // ARGB (32-bit)
            (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (1, 1, 1, 0)
        }
        
        self.init(
            .sRGB,
            red: Double(r) / 255,
            green: Double(g) / 255,
            blue:  Double(b) / 255,
            opacity: Double(a) / 255
        )
    }
}
