//
//  EventInfo.swift
//  EventplanerAppIos
//
//  Created by Kirschenstein, Justus (SE-5/5AFI1A) on 17.04.23.
//
import SwiftUI

struct EventInfoView: View {
    
    @StateObject var state: CreateEventViewState
    @Binding var eventArray: [Event]
    @State var index:Int
    let sice  = 30.0
    
    var body: some View {
        VStack{
            List{
                Text("Name: \(eventArray [index].name)")
                Text("Date: \(eventArray [index].date)")
                Text("Description: \(eventArray [index].description)")
                Text("Location: \(eventArray [index].location)")
                Text("Contact: \(eventArray [index].contact)")
                Text("Costs: \(eventArray [index].costs)$")
                Text("Max participant: \(eventArray [index].maxParticipant)")
                Text("Min Age: \(eventArray [index].minAge)")
                
            }
            
            Button(action: {
                let activityVC = UIActivityViewController(activityItems: [
                    "Name: \(eventArray[index].name)",
                    "Date: \(eventArray[index].date)",
                    "Description: \(eventArray[index].description)",
                    "Location: \(eventArray[index].location)",
                    "Contact: \(eventArray[index].contact)",
                    "Costs: \(eventArray[index].costs)$",
                    "Max participant: \(eventArray[index].maxParticipant)",
                    "Min Age: \(eventArray[index].minAge)"
                ], applicationActivities: nil)
                UIApplication.shared.windows.first?.rootViewController?.present(activityVC, animated: true, completion: nil)
            }) {
                VStack{
                    Image(systemName: "square.and.arrow.up")
                        .resizable()
                        .scaledToFit()
                        .foregroundColor(.blue)
                        .frame(width: sice, height: sice)
                        .padding()
                        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    Text("Share")
                }
                    
            }

        }
    }
    
    func displazEventSettings (input1: String, input2: Int, text: String) -> Text{
        if (input1 == "" || input2 == 0){
            return Text("")
        }else{
            return Text(text + "\n \(eventArray [index].name)")
            
        }
    }
}


//struct EventInfoView_Previews: PreviewProvider {
//    @State private static var eventArray = [Event]()
//    static var previews: some View {
//        EventInfoView(
//            state: CreateEventViewState(),
//            eventArray: $eventArray,
//            index: 0
//        )
//    }
//}
