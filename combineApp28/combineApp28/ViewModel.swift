//
//  ViewModel.swift
//  combineApp28
//
//  Created by 西澤 耕平 on 2022/07/11.
//

import Foundation
//import SwiftUI
import Combine


class ContentViewModel: ObservableObject{
    @Published var turn : Bool = false
    @Published var btntxt : [String] = [" "," "," "," "," "," "," "," "," "]
    @Published var marubatu : [Int] = [0,0,0,0,0,0,0,0,0]
    @Published var maru :String = "○"
    @Published var batu :String = "×"
//    var companyRepository: CompanyRepository
    var cancellable: [Cancellable] = []
    init(){
        let maru = $maru
            .map{_ in }
            .sink{_ in
//                [weak self]
//                (maru) in
//                guard let self = self, let batu = maru else {return}
//                self.batu = String(batu)
            }
        
        cancellable.append(maru)
        
       
        
    }

    func tap(btnnum: Int){
    if(marubatu[btnnum] == 0){
        
        if(turn == false){
        btntxt[btnnum] = maru
    }else{
        btntxt[btnnum] = batu
    }
    
    turn.toggle()
        marubatu[btnnum] += 1
        
    }
    
}
    
    
    func reset(){
        turn = false
        
        for i in 0..<9{
            
            btntxt[i] = " "
            
        }
        
        for i in 0..<9{
            
            marubatu[i] = 0
            
        }
        
//        btntxt[0] = " "
//        btntxt[1] = " "
//
//        marubatu[0] = 0
//        marubatu[1] = 0
//
        
        
    }
    


}
