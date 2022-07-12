//
//  marubatuView.swift
//  combineApp28
//
//  Created by 西澤 耕平 on 2022/07/11.
//

import SwiftUI
import Combine

struct marubatuView: View {
    @ObservedObject var viewModel: ContentViewModel
    init(viewModel: ContentViewModel){
        self.viewModel = viewModel
    }
    @State var marubatu : String = " "
    @State var hannbetu : Int = 0
    @State var hairetu : [Int] = [0,1,2,3,4,5,6,7,8]
    var body: some View {
        
        GeometryReader { geometry in
            VStack(spacing:0){
              
                    
                
                HStack(spacing:0){
               
                    
                    Button(action: {
//
                        viewModel.tap(btnnum: hairetu[0])
                    }) {
//                        Text(isTeki ? "×" : "○")
                        Text(viewModel.btntxt[0])
                            .frame(width: geometry.size.width / 3, height:geometry.size.height/6)
                        
                            .overlay(
                                RoundedRectangle(cornerRadius: 0).stroke(Color.yellow,lineWidth:2)
                            
                                
                            )
                            
                    }
                    
                    Button(action: {
                        viewModel.tap(btnnum: hairetu[1])
                    }) {
                        Text(viewModel.btntxt[1])
                            .frame(width: geometry.size.width / 3, height:geometry.size.height/6)
                            .overlay(
                                RoundedRectangle(cornerRadius: 0).stroke(Color.yellow,lineWidth:2)
                                )
                    }
                    
                    Button(action: {
                        viewModel.tap(btnnum: hairetu[2])
                    }) {
                        Text(viewModel.btntxt[2])
                            .frame(width: geometry.size.width / 3, height:geometry.size.height/6)
                            .overlay(
                                RoundedRectangle(cornerRadius: 0).stroke(Color.yellow,lineWidth:2)
                                )

                    }
        
                }
                
                HStack(spacing:0){
               
                    
                    Button(action: {
                        viewModel.tap(btnnum: hairetu[3])
                    }) {
                        Text(viewModel.btntxt[3])
                            
                            .frame(width: geometry.size.width / 3, height:geometry.size.height/6)
                            .overlay(
                                RoundedRectangle(cornerRadius: 0).stroke(Color.yellow,lineWidth:2)
                                )

                    }
                    
                    Button(action: {
                        viewModel.tap(btnnum: hairetu[4])
                    }) {
                        Text(viewModel.btntxt[4])
                            .frame(width: geometry.size.width / 3, height:geometry.size.height/6)
                            .overlay(
                                RoundedRectangle(cornerRadius: 0).stroke(Color.yellow,lineWidth:2)
                                )

                    }
                    
                    Button(action: {
                        viewModel.tap(btnnum: hairetu[5])
                    }) {
                        Text(viewModel.btntxt[5])
                            .frame(width: geometry.size.width / 3, height:geometry.size.height/6)
                            .overlay(
                                RoundedRectangle(cornerRadius: 0).stroke(Color.yellow,lineWidth:2)
                                )

                    }
        
                }
                
                HStack(spacing:0){
               
                    
                    Button(action: {
                        viewModel.tap(btnnum: hairetu[6])
                    }) {
                        Text(viewModel.btntxt[6])
                            
                            .frame(width: geometry.size.width / 3, height:geometry.size.height/6)
                            .overlay(
                                RoundedRectangle(cornerRadius: 0).stroke(Color.yellow,lineWidth:2)
                                )

                            
                    }
                    
                    Button(action: {
                        viewModel.tap(btnnum: hairetu[7])
                    }) {
                        Text(viewModel.btntxt[7])
                            .frame(width: geometry.size.width / 3, height:geometry.size.height/6)
                            .overlay(
                                RoundedRectangle(cornerRadius: 0).stroke(Color.yellow,lineWidth:2)
                                )

                    }
                    
                    Button(action: {
                        viewModel.tap(btnnum: hairetu[8])
                    }) {
                        Text(viewModel.btntxt[8])
                            .frame(width: geometry.size.width / 3, height:geometry.size.height/6)
                            .overlay(
                                RoundedRectangle(cornerRadius: 0).stroke(Color.yellow,lineWidth:2)
                                )

                    }
        
                }
                
                
                Spacer()
                    .frame(width: geometry.size.width / 3, height:geometry.size.height/12)
                
                Button(action: {
                    viewModel.reset()
                }) {
                    Text("リセット")
                        .frame(width: geometry.size.width / 3, height:geometry.size.height/8)
                        
                        .overlay(
                            RoundedRectangle(cornerRadius: 20).stroke(Color.yellow,lineWidth:2)
                            )
//                        .background(Color.yellow)
                }
                
                
                
            }
           
        }
        
        
    }
}



struct marubatuView_Previews: PreviewProvider {
    static var previews: some View {
        marubatuView(
            viewModel:ContentViewModel()
        )
    }
}
