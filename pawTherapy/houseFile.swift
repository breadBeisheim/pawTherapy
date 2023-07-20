
// houseFile.swift
// copyPaste
//
// Created by Scholar on 7/19/23.
//
import SwiftUI
struct scavengerTask3: Identifiable {
  let id = UUID()
  let itemName: String
  var isCompleted: Bool
}
struct houseFile: View {
  @State private var houseTasks = [scavengerTask3(itemName: "Find a ballpoint pen", isCompleted: false), scavengerTask3(itemName: "Find a lock", isCompleted: false), scavengerTask3(itemName: "Find a pencil with a pattern on it", isCompleted: false), scavengerTask3(itemName: "Find the comfiest chair", isCompleted: false), scavengerTask3(itemName: "Find a spoon", isCompleted: false), scavengerTask3(itemName: "Find a picture", isCompleted: false), scavengerTask3(itemName: "Find a blanket", isCompleted: false), scavengerTask3(itemName: "Find a colorful mug", isCompleted: false), scavengerTask3(itemName: "Find something old", isCompleted: false), scavengerTask3(itemName: "Find something with a screen", isCompleted: false)]
  var body: some View {
    VStack {
      Image("house")
        .resizable(resizingMode: .stretch)
        .aspectRatio(contentMode: .fit)
      List($houseTasks) { $scavengerTask3 in
        HStack {
          Image(systemName: scavengerTask3.isCompleted ? "checkmark.circle.fill": "checkmark.circle" )
            .onTapGesture {
              scavengerTask3.isCompleted.toggle()
            }
          Text(scavengerTask3.itemName)
        }
      }
    }
    .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(hue: 0.149, saturation: 0.103, brightness: 1.0)/*@END_MENU_TOKEN@*/)
  }
}
struct houseFile_Previews: PreviewProvider {
  static var previews: some View {
    houseFile()
  }
}
