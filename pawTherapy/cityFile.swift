//
// cityFile.swift
// copyPaste
//
// Created by Scholar on 7/19/23.
//
import SwiftUI
struct scavengerTask2: Identifiable {
  let id = UUID()
  let itemName: String
  var isCompleted: Bool
}
struct cityFile: View {
  @State private var cityTasks = [scavengerTask2(itemName: "Find a building with curved roof", isCompleted: false), scavengerTask2(itemName: "Find a Yeild sign", isCompleted: false), scavengerTask2(itemName: "Find a statue", isCompleted: false), scavengerTask2(itemName: "Find a parking garage", isCompleted: false), scavengerTask2(itemName: "Find a bird", isCompleted: false), scavengerTask2(itemName: "Find a building with a slanted roof", isCompleted: false), scavengerTask2(itemName: "Find a construction site", isCompleted: false), scavengerTask2(itemName: "Find an office building", isCompleted: false), scavengerTask2(itemName: "Find a store", isCompleted: false), scavengerTask2(itemName: "Find a cell tower", isCompleted: false)]
  var body: some View {
    VStack {
      Image("city")
        .resizable(resizingMode: .stretch)
        .aspectRatio(contentMode: .fit)
      List($cityTasks) { $scavengerTask2 in
        HStack {
          Image(systemName: scavengerTask2.isCompleted ? "checkmark.circle.fill": "checkmark.circle" )
            .onTapGesture {
              scavengerTask2.isCompleted.toggle()
            }
          Text(scavengerTask2.itemName)
        }
      }
    }
    .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(hue: 0.159, saturation: 0.085, brightness: 0.972)/*@END_MENU_TOKEN@*/)
  }
}
struct cityFile_Previews: PreviewProvider {
  static var previews: some View {
    cityFile()
  }
}
