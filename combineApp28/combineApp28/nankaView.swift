//
//  nankaView.swift
//  combineApp28
//
//  Created by 西澤 耕平 on 2022/07/11.
//

import SwiftUI

struct nankaView: View {
    @ObservedObject var viewModel: ContentViewModel
//    @StateObject var viewModel = ContentViewModel()
    var body: some View {
        
       
            NavigationView {
                NavigationLink(destination:marubatuView(viewModel: ContentViewModel())){
                    VStack{
            Spacer()
                Text("スタート")
                    Spacer()
                    }
                    
                }
                
                
        }
        
        
    }
}

struct nankaView_Previews: PreviewProvider {
    static var previews: some View {
        nankaView(viewModel:ContentViewModel())
    }
}
