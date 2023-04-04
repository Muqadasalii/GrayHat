//
//  Test.swift
//  Grayhat Project
//
//  Created by Mac on 01/04/2023.
//

import SwiftUI

struct Test: View {
    @ObservedObject private var viewModel = userViewModel()
    var body: some View {
        NavigationView{
            List(viewModel.users){ user in
                VStack{
                    Text(user.name).font(.title)
                    Text(user.surname).font(.subheadline)
                }
                
            }.navigationTitle("User").onAppear(){
                self.viewModel.fetchData()
            }
        }
    }
}

struct Test_Previews: PreviewProvider {
    static var previews: some View {
        Test()
    }
}
