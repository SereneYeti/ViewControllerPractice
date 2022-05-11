//
//  MathCalculations.swift
//  ViewControllerPractice
//
//  Created by IACD-011 on 2022/05/11.
//

import Foundation

class MathCalculations{
    
    static func CalculateMean(set: [Int])->Double{
        var sum:Double = 0.0;
        
        for I in set {
            sum += Double(I);
        }
        
        let mean = sum / Double(set.count)
        
        return mean;
    }
    
    static func CalculateMedian(set: [Int])->Double{
        
        let sortedSet = set.sorted(by: { num1, num2 in

            return num1 < num2 });
        
        var Median:Double = 0;
        
        print(sortedSet);
        if(sortedSet.count%2 != 0){ //Odd Number of items in set
            print("Odd");
            let medianPos = Double((sortedSet.count/Int(2))).rounded(.up);            
            Median = Double(sortedSet[Int(medianPos)]);
        }
        else{ //Else Even Number of items in set
            print("Even");
            let midTerm:Double = Double((sortedSet.count))/2.0;
            let lowerTerm = Int(midTerm.rounded(.down)-1);
            let upperTerm = Int(midTerm.rounded(.up));
            
            //print("Mid Term: " + String(midTerm);
            //print("Lower Term: " + String(sortedSet[lowerTerm]) + "\nUpper Term: " + String(sortedSet[upperTerm]));
            
            Median = Double((sortedSet[lowerTerm] + sortedSet[upperTerm])/2);
            
        }
    
        return Median;
    }
    
    static func CalculateMode(set: [Int])->Int{
        
        var modalPair = ModalStruct(key: 0, value: set[0], count: 0);
        var currentModeAns = modalPair;
        
        while(modalPair.key < set.count){
            for i in stride(from: 0, to: set.count, by: 1) {
                if(set[i] == modalPair.value){
                    //modalPair.key = i;
                    //modalPair.value = set[i];
                    modalPair.count += 1;
                }
            }
            if(modalPair.count > currentModeAns.count){
                currentModeAns = modalPair;
                modalPair = ModalStruct(key: modalPair.key+1, value: set[modalPair.key], count: 0);
            }
            else{
                modalPair = ModalStruct(key: modalPair.key+1, value: set[modalPair.key], count: 0);
            }
        }
        
                    
        return (currentModeAns.value);
    }
    
    struct ModalStruct {
        var key:Int;
        var value:Int;
        var count:Int;
    }
    
}
