//
//  ButtonGroup.swift
//  MojitoEats
//
//  Created by judongseok on 2021/04/02.
//

import SwiftUI

var ScreenWidth : CGFloat = UIScreen.main.bounds.width / 5.5
var size: CGFloat = 25
struct HomeButton: View {
    @Binding var Screen: String
    @Binding var OpacityArr: [Double]
    var num : Double = 0.5
    var body: some View{
        VStack {
            Button(action: {
                Screen = "Home"
                OpacityArr = [1, 0.5, 0.5, 0.5, 0.5]
            }, label: {
                VStack{
                    Image("home")
                        .resizable()
                        .frame(width: size - 1, height: size)
                        .padding(.top, 10)
                    Text("홈")
                        .font(.footnote)
                    Spacer()
                }
            })
            .foregroundColor(.black)
        }
        .frame(width: ScreenWidth, height: 50, alignment: .center)
        .opacity(OpacityArr[0])
    }
}

struct SearchButton: View {
    @Binding var Screen: String
    @Binding var OpacityArr: [Double]
    var body: some View{
        VStack {
            Button(action: {
                Screen = "Search"
                OpacityArr = [0.5, 1, 0.5, 0.5, 0.5]
            }, label: {
                VStack{
                    Image(systemName: "magnifyingglass")
                        .resizable()
                        .frame(width: size, height: size)
                        .padding(.top, 10)
                    Text("검색")
                        .font(.footnote)
                    Spacer()
                }
            })
            .foregroundColor(.black)
        }
        .frame(width: ScreenWidth, height: 50, alignment: .center)
        .opacity(OpacityArr[1])
    }
}

struct HeartButton: View {
    @Binding var Screen: String
    @Binding var OpacityArr: [Double]
    var body: some View{
        VStack {
            Button(action: {
                Screen = "Heart"
                OpacityArr = [0.5, 0.5, 1, 0.5, 0.5]
            }, label: {
                VStack {
                    Image(systemName: "heart")
                        .resizable()
                        .frame(width: size, height: size)
                        .padding(.top, 10)
                    Text("같이먹자")
                        .font(.footnote)
                    Spacer()
                }
            })
            .foregroundColor(.black)
        }
        .frame(width: ScreenWidth, height: 50, alignment: .center)
        .opacity(OpacityArr[2])
    }
}
struct OrderButton: View {
    @Binding var Screen: String
    @Binding var OpacityArr: [Double]
    var body: some View{
        VStack {
            Button(action: {
                Screen = "Order"
                OpacityArr = [0.5, 0.5, 0.5, 1, 0.5]
            }, label: {
                VStack {
                    Image("order")
                        .resizable()
                        .frame(width: size - 5, height: size)
                        .padding(.top, 10)
                    Text("주문내역")
                        .font(.footnote)
                    Spacer()
                }
            })
            .foregroundColor(.black)
        }
        .frame(width: ScreenWidth, height: 50, alignment: .center)
        .opacity(OpacityArr[3])
    }
}
struct UserButton: View {
    @Binding var Screen: String
    @Binding var OpacityArr: [Double]
    var body: some View{
        VStack {
            Button(action: {
                Screen = "User"
                OpacityArr = [0.5, 0.5, 0.5, 0.5, 1]
            }, label: {
                VStack{
                    Image(systemName: "person")
                        .resizable()
                        .frame(width: size, height: size)
                        .padding(.top, 10)
                    Text("My 이츠")
                        .font(.footnote)
                    Spacer()
                }
            })
            .foregroundColor(.black)
        }
        .frame(width: ScreenWidth, height: 50, alignment: .center)
        .opacity(OpacityArr[4])
    }
}

struct TabButtonView: View{
    @Binding var Screen: String
    @Binding var OpacityArr: [Double]
    
    var body: some View{
        Divider()
        HStack {
            HomeButton(Screen: $Screen, OpacityArr: $OpacityArr)
            SearchButton(Screen: $Screen, OpacityArr: $OpacityArr)
            HeartButton(Screen: $Screen, OpacityArr: $OpacityArr)
            OrderButton(Screen: $Screen, OpacityArr: $OpacityArr)
            UserButton(Screen: $Screen, OpacityArr: $OpacityArr)
        }
        .frame(width: UIScreen.main.bounds.width * 0.95, height: 70)
    }
}

