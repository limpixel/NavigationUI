//
//  ContentView.swift
//  NavigationUI
//
//  Created by Abdul Halim on 29/01/21.
//  Copyright © 2021 NEONFACT. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            TabView{
                Home()
                    .tabItem{
                        Image(systemName: "house.fill")
                        Text("Beranda")
                }
                
                Home()
                    .tabItem{
                        Image(systemName: "paperplane.fill")
                        Text("Explore")
                }
                
                Home()
                    .tabItem{
                        Image(systemName: "tray.fill")
                        Text("Subscription")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Home : View {
    var body: some View{
        NavigationView{
            Content()
                
                .navigationBarItems(
                    // logo_youtube
                    leading:
                    HStack{
                        Button(action : {print("Hello World")}){
                            Image("youtube_logo")
                                .renderingMode(.original)
                                .resizable()
                                .frame(width : 90, height: 20)
                        }
                        
                    },
                    
                    // Profile, video, dll
                    trailing:
                    HStack(spacing : 20){
                        Button(action : {print("Hello Button")}){
                            Image(systemName: "tray")
                                .foregroundColor(Color.black)
                            
                        }
                        
                        Button(action : {print("Hello Button")}){
                            Image(systemName: "video.fill")
                                .foregroundColor(Color.black)
                            
                        }
                        
                        Button(action : {print("Hello Button")}){
                            Image(systemName: "magnifyingglass")
                                .foregroundColor(Color.black)
                            
                        }
                        
                        Button(action : {print("Hello Button")}){
                            NavigationLink(destination :SettingView()){
                                Image("profile")
                                    .renderingMode(.original)
                                    .resizable()
                                    .frame(width : 20, height: 20)
                                    .clipShape(Circle())
                            }
                        }
                    }
            )
                .navigationBarTitle("", displayMode: .inline)
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}

struct Content : View {
    var body: some View{
        List{
            //Konten 1
            VStack{
                ZStack(alignment: .bottomTrailing){
                    Image("kokbisa_bola")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                    Text("15:00")
                        .padding()
                        .foregroundColor(Color.white)
                        .font(.caption)
                        .background(Color.black)
                        .cornerRadius(5)
                        .padding(.trailing, 5)
                        .padding(.bottom, 5)
                    
                }
                
                HStack(spacing: 20){
                    Image("kok_bisa")
                        .resizable()
                        .frame(width : 30, height: 30)
                        .clipShape(Circle())
                    VStack(alignment : .leading){
                        Text("Kenapa Sepak Bola Olahraga Yang Paling Populer?")
                            .font(.headline)
                        HStack{
                            Text("ini adalah deskripsi video kita - 300x ditonton - 9 jam yang lalu")
                                .font(.caption)
                        }
                    }
                    Spacer()
                    Image(systemName: "list.bullet")
                }
                
            }
            
            //Konten 2
            VStack{
                ZStack(alignment: .bottomTrailing){
                    Image("kokbisa_kesehatan")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                    Text("15:00")
                        .padding()
                        .foregroundColor(Color.white)
                        .font(.caption)
                        .background(Color.black)
                        .cornerRadius(5)
                        .padding(.trailing, 5)
                        .padding(.bottom, 5)
                    
                }
                
                HStack(spacing: 20){
                    Image("kok_bisa")
                        .resizable()
                        .frame(width : 30, height: 30)
                        .clipShape(Circle())
                    VStack(alignment : .leading){
                        Text("Apa Itu Ilmu 'Kesehatan?' / 'kedokteran Sebenarnya?'")
                            .font(.headline)
                        HStack{
                            Text("ini adalah deskripsi video kita - 300x ditonton - 9 jam yang lalu")
                                .font(.caption)
                        }
                    }
                    Spacer()
                    Image(systemName: "list.bullet")
                }
                
            }
            
            
            //Konten 3
            VStack{
                ZStack(alignment: .bottomTrailing){
                    Image("kokbisa_kimia")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                    Text("15:00")
                        .padding()
                        .foregroundColor(Color.white)
                        .font(.caption)
                        .background(Color.black)
                        .cornerRadius(5)
                        .padding(.trailing, 5)
                        .padding(.bottom, 5)
                    
                }
                
                HStack(spacing: 20){
                    Image("kok_bisa")
                        .resizable()
                        .frame(width : 30, height: 30)
                        .clipShape(Circle())
                    VStack(alignment : .leading){
                        Text("Kenapa Sepak Bola Olahraga Yang Paling Populer?")
                            .font(.headline)
                        HStack{
                            Text("Apa Itu Ilmu 'Kimia' Sebenarnya? Apa Gunanya Di Hidup Kita?")
                                .font(.caption)
                        }
                    }
                    Spacer()
                    Image(systemName: "list.bullet")
                }
                
            }
            
            
        }
    }
}
