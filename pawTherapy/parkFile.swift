//
// parkfile.swift
// copyPaste
//
// Created by Scholar on 7/19/23.
//
import SwiftUI
struct scavengerTask: Identifiable {
  let id = UUID()
  let itemName: String
  var isCompleted: Bool
}
struct parkFile: View {
  @State private var parkTasks = [scavengerTask(itemName: "Find a stick as long as your arm", isCompleted: false), scavengerTask(itemName: "Find a stick shorter than your finger", isCompleted: false), scavengerTask(itemName: "Find a bird's nest", isCompleted: false), scavengerTask(itemName: "Find an acorn", isCompleted: false), scavengerTask(itemName: "Find a brown leaf", isCompleted: false), scavengerTask(itemName: "Find an oak tree", isCompleted: false), scavengerTask(itemName: "Find a squirrel", isCompleted: false), scavengerTask(itemName: "Find a green leaf", isCompleted: false), scavengerTask(itemName: "Find a rock bigger than your hand", isCompleted: false), scavengerTask(itemName: "Find a pebble", isCompleted: false)]
  var body: some View {
    VStack {
      Image("park")
        .resizable(resizingMode: .stretch)
        .aspectRatio(contentMode: .fit)
      List($parkTasks) { $scavengerTask in
        HStack {
          Image(systemName: scavengerTask.isCompleted ? "checkmark.circle.fill": "checkmark.circle" )
            .onTapGesture {
              scavengerTask.isCompleted.toggle()
            }
          Text(scavengerTask.itemName)
        }
      }
    }
    .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(hue: 0.171, saturation: 0.094, brightness: 1.0)/*@END_MENU_TOKEN@*/)
  }
}
struct parkFile_Previews: PreviewProvider {
  static var previews: some View {
    parkFile()
  }
}
