//
//  ContentView.swift
//  SimpleGame
//
//  Created by Shahid on 31.12.22.
//

import SwiftUI

struct ContentView: View {
  @State var a: CGFloat = 500
  @State var b: CGFloat = 500

  var game: some View {
    VStack {
      Button(action: {
        a += 50
        b -= 50
      }) {


        RoundedRectangle(cornerRadius:20)
          .foregroundColor(.green)
          .frame(width: 400, height: a)
      }
      Button(action: {
        b += 50
        a -= 50
      }) {
        RoundedRectangle(cornerRadius:20)
          .foregroundColor(.red)
          .frame(width: 400, height: b)
      }



    }
  }
    var body: some View {

      if b > 920 {
        NavigationView {
        VStack {
          ZStack {
            RoundedRectangle(cornerRadius: 20)
              .stroke(lineWidth: 2)
              .frame(width: 90, height: 40)
              .foregroundColor(.red)

            Text("Red win")
              .foregroundColor(.black)
              .fontWeight(.bold)
              .font(.caption)
          }

                     NavigationLink(destination: ContentView()
                      .navigationBarBackButtonHidden(true)
) {
            ZStack {
              RoundedRectangle(cornerRadius: 20)
                .stroke(lineWidth: 2)
                .frame(width: 90, height: 40)
                .foregroundColor(.blue)

              Text("Try again")
                .foregroundColor(.black)
                .fontWeight(.bold)
                .font(.caption)
            }
          }

        }
        }
      }
      else if a > 850 {
        NavigationView {
        VStack {
          ZStack {
            RoundedRectangle(cornerRadius: 20)
              .stroke(lineWidth: 2)
              .frame(width: 90, height: 50)
              .foregroundColor(.green)

            Text("Green win")
              .foregroundColor(.black)
              .fontWeight(.bold)
              .font(.caption)
          }

          NavigationLink(destination: ContentView()
            .navigationBarBackButtonHidden(true)
) {
            ZStack {
              RoundedRectangle(cornerRadius: 20)
                .stroke(lineWidth: 2)
                .frame(width: 90, height: 40)
                .foregroundColor(.blue)

              Text("Try again")
                .foregroundColor(.black)
                .fontWeight(.bold)
                .font(.caption)
            }
          }
        }
        }
      }
      else if a == 10000 {
game
      }
      else  {
      game
      }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
struct Games {

  @State var a: CGFloat = 500
  @State var b: CGFloat = 500
  var game: some View {
    VStack {
      Button(action: {
        a += 100
      }) {


        RoundedRectangle(cornerRadius:20)
          .foregroundColor(.green)
          .frame(width: 400, height: a)
      }
      Button(action: {
        b += 100
      }) {
        RoundedRectangle(cornerRadius:20)
          .foregroundColor(.red)
          .frame(width: 400, height: b)
      }



    }
  }
}
