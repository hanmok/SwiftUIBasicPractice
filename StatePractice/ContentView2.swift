//
//  ContentView.swift
//  StatePractice
//
//  Created by 이한목 on 2021/08/31.
//

import SwiftUI

struct ContentView: View {
    
    //     var name = "Adam"
    // when it changes ,
    //    WARNING: 'Cannot assign to property: 'self' is immutable'       appears .
    
    
    
    //     difference between
    
    //     Observed
    //     Environment
    //     State
    
    // Environment Data
    // Shares the data between views all of the app.
    
    
    @State var name = "Adam"
    
    //    @ObservedObject var viewModel = ViewModel()
    
    @StateObject var viewModel = ViewModel()
    //    traditionally used to initialize viewModel instead of ObservedObject
    
    @State var isPresented = false
    
    @State var username = "Sam"
//     var username = "Sam"
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Adam")
                    .padding()
                
                NavigationLink(
                    destination: ProfileView(username2: $username),
//                    destination: ProfileView(testName: username),
                    label: {
                        Text(username)
                            .padding()
                            .foregroundColor(.blue)
                    })
                
                Text("John")
                    .padding()
            }
        }
    }
}

struct ProfileView: View {

    //    A binding is a connection between a value and a view that displays and changes it.
//    You can create your own bindings with the @Binding property wrapper,
//    and pass bindings into views that require them
    
    //There's exchange of Binded datas between views
    @Binding var username2: String
//    var testName: String
    var body: some View {
        
        TextField(username2, text: $username2)
//        Text(testName)
//            TextField(<#T##titleKey: LocalizedStringKey##LocalizedStringKey#>, text: <#T##Binding<String>#>)
//        Text(username2)
            .padding()
        
    }
}

struct NameView: View{
    
    //    @EnvironmentObject
    //                          ViewModel is of ObservableObject
    @ObservedObject var viewModel: ViewModel
    
    //    let name: String
    
    // @Published var name = "Sam"
    var body: some View {
        Text(viewModel.name)
            .padding()
    }
}

struct MainView: View {
    //    A binding to the current presentation mode of the view associated with this environment.
    @Environment(\.presentationMode) var mode
    // mode is going to be changed with the button
    var body: some View {
        VStack {
            Button(action: {
                mode.wrappedValue.dismiss()
                
                //                wrappedValue:
                //the underlying value referenced by the binding variable
            }, label: {
                Text("Cancel")
            })
        }
        RoundedRectangle(cornerSize: CGSize(width: 100, height: 100))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
