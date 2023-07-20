// ScavengerHuntQuiz.swift
//
// Created by Scholar on 7/19/23.
//
import SwiftUI
struct ScanvengerHuntQuiz: View {
  @State private var shbutton1 = false
  @State private var shbutton2 = false
  @State private var shbutton3 = false
  var body: some View {
    NavigationStack {
    VStack {
      HStack {
        Image("scavengerhunt1")
          .resizable(resizingMode: .stretch)
          .aspectRatio(contentMode: .fit)
          .padding(.bottom)
        Spacer()
      }
      .padding(.bottom, 2.0)
      HStack {
        Spacer()
        Image("welcomeScavenger")
          .resizable(resizingMode: .stretch)
          .aspectRatio(contentMode: .fit)
        Spacer()
      }
      HStack {
        Spacer()
        Image("gingercat2")
          .resizable(resizingMode: .stretch)
          .aspectRatio(contentMode: .fit)
          .padding(.top, -40.0)
      }
      VStack(spacing: 0.0) {
        Image("whereareyou")
          .resizable(resizingMode: .stretch)
          .aspectRatio(contentMode: .fit)
          .padding(.horizontal)
      Button(action: {shbutton1.toggle()}) {
        Image("park 1")
          .resizable(resizingMode: .stretch)
          .aspectRatio(contentMode: .fit)
          .font(.title2)
          .foregroundColor(Color.black)
      }
      if shbutton1 {
        NavigationLink(destination: parkFile()) {
          /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Label Content@*/Text("Continue")
            .foregroundColor(Color.white)
            .background(Color(red: 0.918, green: 0.8196078431372549, blue: 0.8588235294117647))
            .cornerRadius(/*@START_MENU_TOKEN@*/8.0/*@END_MENU_TOKEN@*/)
        }
      }
      Button(action: {shbutton2.toggle()}) {
        Image("city 1")
          .resizable(resizingMode: .stretch)
          .aspectRatio(contentMode: .fit)
          .font(.title2)
          .foregroundColor(Color.black)
      }
      if shbutton2 {
        NavigationLink(destination: cityFile()) {
          /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Label Content@*/Text("Continue")
            .foregroundColor(Color(hue: 0.138, saturation: 0.052, brightness: 1.0))
            .background(Color(red: 0.918, green: 0.8196078431372549, blue: 0.8588235294117647))
            .cornerRadius(/*@START_MENU_TOKEN@*/8.0/*@END_MENU_TOKEN@*/)
        }
      }
      Button(action:{shbutton3.toggle()}) {
        Image("house 1")
          .resizable(resizingMode: .stretch)
          .aspectRatio(contentMode: .fit)
          .padding(5.0)
          .font(.title2)
          .foregroundColor(Color.black)
      }
        if shbutton3 {
          NavigationLink(destination: houseFile()) {
            /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Label Content@*/Text("Continue")
              .foregroundColor(Color(hue: 0.138, saturation: 0.052, brightness: 1.0))
              .background(Color(red: 0.918, green: 0.8196078431372549, blue: 0.8588235294117647))
              .cornerRadius(/*@START_MENU_TOKEN@*/8.0/*@END_MENU_TOKEN@*/)
          }
        }
      }
    }
    .padding(.bottom, 250.0)
    .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(hue: 0.165, saturation: 0.094, brightness: 1.0)/*@END_MENU_TOKEN@*/)
  }
  }
  struct ScanvengerHuntQuiz_Previews: PreviewProvider {
    static var previews: some View {
      ScanvengerHuntQuiz()
    }
  }
}
