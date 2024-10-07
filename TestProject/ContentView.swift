//
//  ContentView.swift
//  TestProject
//
//  Created by Nurmukhanbet Sertay on 07.10.2024.
//

import SwiftUI

import SwiftUI

struct ContentView: View {
    // Состояние для хранения значения счётчика
    @State private var counter = 0
    
    var body: some View {
        VStack {
            // Отображение текущего значения счётчика
            Text("\(counter)")
                .font(.system(size: 100, weight: .bold, design: .rounded))
                .padding()
            
            HStack(spacing: 50) {
                // Кнопка увеличения счётчика
                Button(action: {
                    counter += 1
                }) {
                    Text("+")
                        .font(.system(size: 50, weight: .bold, design: .rounded))
                        .frame(width: 80, height: 80)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .clipShape(Circle())
                }
                
                // Кнопка сброса счётчика
                Button(action: {
                    counter = 0
                }) {
                    Text("Сброс")
                        .font(.system(size: 25, weight: .bold, design: .rounded))
                        .frame(width: 120, height: 50)
                        .background(Color.red)
                        .foregroundColor(.white)
                        .clipShape(Capsule())
                }
            }
        }
        .padding()
        .background(Color(UIColor.systemBackground)) // Поддержка тёмной и светлой тем
        .animation(.easeInOut, value: counter) // Анимация для изменения значения счётчика
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .preferredColorScheme(.light) // Превью светлой темы
            ContentView()
                .preferredColorScheme(.dark) // Превью тёмной темы
        }
    }
}
