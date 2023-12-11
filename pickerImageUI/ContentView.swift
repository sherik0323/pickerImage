//
//  ContentView.swift
//  pickerImageUI
//
//  Created by Sherozbek on 11/12/23.
//

import SwiftUI

struct ContentView: View {
    @State var image = UIImage(systemName: "photo")!
    @State var isPickerShow = false
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .trailing, vertical: .bottom)){
            Image(uiImage: image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 100, height: 100)
                .clipped()
                .cornerRadius(20)
            
            Button{
                isPickerShow.toggle()
            }label: {
                ZStack{
                    Circle()
                        .frame(width: 50, height: 50)
                        .foregroundColor(.pink)
                        .overlay(RoundedRectangle(cornerRadius: 25)
                            .stroke(Color.white, lineWidth: 3))
                    Image(systemName: "camera.fill")
                        .foregroundColor(.white)
                            
                        
                    
                }
            }
            .offset(x:20, y:20)
            .sheet(isPresented: $isPickerShow) {
                ImagePicker(image: $image)
            }
        }
    }
}

#Preview {
    ContentView()
}
