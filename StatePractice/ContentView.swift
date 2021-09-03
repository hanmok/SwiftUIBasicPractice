////
////  ContentView.swift
////  StatePractice
////
////  Created by 이한목 on 2021/08/31.
////
//
//import SwiftUI
//
//struct ContentView: View {
//
////     var name = "Adam"
//// when it changes ,
////    'Cannot assign to property: 'self' is immutable' appears .
//
//
//
////     difference between
//
////     Observed
////     Environment
////     State
//
//    // Environment Data
//    // Shares the data between views all of the app.
//
//
//    @State var name = "Adam"
//
////    @ObservedObject var viewModel = ViewModel()
//
//    @StateObject var viewModel = ViewModel()
////    traditionally used to initialize viewModel instead of ObservedObject
//
//    @State var isPresented = false
//
//    var body: some View {
//        VStack {
//            Text("Hello,")
//                .padding()
//            NameView(viewModel: viewModel)
//
//            Button(action: {
//                self.isPresented.toggle()
////                viewModel.changeName()
//            }, label: {
//                Text("Button")
//                    .background(Color.blue)
//                    .foregroundColor(.white)
//            })
//        }.sheet(isPresented: $isPresented, content: {
//            MainView()
//        })
//    }
//}
//
//struct NameView: View{
//
////    @EnvironmentObject
//    @ObservedObject var viewModel: ViewModel
//
////    let name: String
//
//    var body: some View {
//        Text(viewModel.name)
//            .padding()
//    }
//}
//
//struct MainView: View {
////    A binding to the current presentation mode of the view associated with this environment.
//    @Environment(\.presentationMode) var mode
//    // mode is going to be changed with the button
//    var body: some View {
//        VStack {
//            Button(action: {
//                mode.wrappedValue.dismiss()
//
////                wrappedValue:
////the underlying value referenced by the binding variable
//            }, label: {
//                Text("Cancel")
//            })
//        }
//        RoundedRectangle(cornerSize: CGSize(width: 100, height: 100))
//    }
//}
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
