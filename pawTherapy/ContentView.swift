//
// ContentView.swift
// pawTherapy
//
// Created by Scholar on 7/17/23.
//
import SwiftUI
struct ContentView: View {
  var body: some View {
    NavigationStack {
      ZStack{
        Image("sunset")
              .resizable()
              .aspectRatio(contentMode: .fill)
              .edgesIgnoringSafeArea(.all)
        VStack {
            Image("paww")
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fit)
            .padding(.top, -100.0)
          Text("Welcome to Paw Theraphy!").foregroundColor(Color(white:100))
            Spacer()
                .frame(width: 50.0, height: 370.0)
          HStack{
            NavigationLink(destination: ScanvengerHuntQuiz()) {
              Image("scavenger")
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fit)
                .padding(5.0)

            } .foregroundColor(Color(white:100))
                        NavigationLink(destination: Riddle()) {
              Image("riddle")
                .resizable(capInsets: EdgeInsets(), resizingMode: .stretch)
                .aspectRatio(contentMode: .fit)
                .padding(5.0)
           }
            .foregroundColor(Color(white:100))
            NavigationLink(destination: Meditation()) {
                Image("meditation")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                    .padding(5.0)

            }
              NavigationLink(destination: WordUnscramble()) {
                  Image("puzzle")
                      .resizable(resizingMode: .stretch)
                      .aspectRatio(contentMode: .fit)
                      .padding(5.0)

              }
          }
            
          HStack{
            Image("black")
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fit)
            Image("grey")
              .resizable(resizingMode: .stretch)
              .aspectRatio(contentMode: .fit)
            Image("ginger")
              .resizable(resizingMode: .stretch)
              .aspectRatio(contentMode: .fit)
            Image("pink")
              .resizable(resizingMode: .stretch)
              .aspectRatio(contentMode: .fit)
          }
          
        }
        .padding(.horizontal, 400.0)
        }
      }
    }
  }
  struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
      ContentView()
    }
  }
