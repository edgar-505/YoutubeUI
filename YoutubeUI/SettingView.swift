//
//  SettingView.swift
//  YoutubeUI
//
//  Created by Ahda  Dzia Ulhaq on 02/02/21.
//

import SwiftUI

struct SettingView: View {
    var body: some View {
        NavigationView {
            Form {
                // Section Foto profile
                Section(){
                    HStack(spacing:20){
                        Image("profile")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        // nama dan status
                        VStack(alignment: .leading){
                            Text("ADU")
                                .font(.headline)
                            Text("UI Designer")
                                .font(.caption)
                        }
                    }
                    .padding(.top, 10)
                    .padding(.bottom, 10)
                }
                //section pengaturan umum
                Section(header: Text("Pengaturan Umum")){
                    HStack(spacing: 20){
                        Image(systemName: "star.fill")
                            .frame(width: 35, height: 35)
                            .background(Color.orange)
                            .cornerRadius(10)
                            .foregroundColor(.white)
                        Text("Video Favorit")
                    }
                    HStack(spacing:20){
                        Image(systemName: "tv")
                            .frame(width: 35, height: 35)
                            .background(Color.green)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                        Text("Channel")
                    }
                }
                //section pengaturan akun
                Section(header: Text("Pengaturan Akun")){
                    HStack(spacing:20){
                        Image(systemName: "heart")
                            .frame(width: 35, height: 35)
                            .background(Color.red)
                            .cornerRadius(10)
                            .foregroundColor(.white)
                        Text("Like Video")
                    }
                    HStack(spacing:20){
                        Image(systemName: "lock.fill")
                            .frame(width: 35, height: 35)
                            .background(Color.blue)
                            .cornerRadius(10)
                            .foregroundColor(.white)
                        Text("Keamanan")
                    }
                }
                
            } .navigationBarTitle("Setting")
        }
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}

//
