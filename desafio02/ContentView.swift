//
//  ContentView.swift
//  desafio02
//
//  Created by Fredson Silva on 08/04/22.
//

import SwiftUI

struct ContentView: View {
    
    var cidade = "João Pessoa"
    var estado = "PB"
    var tempoHoje = "38"
    var tempoSeg = "36"
    var tempoTer = "28"
    var tempoQua = "24"
    var tempoQui = "20"

    var body: some View {
        
        ZStack{
            
            // MARK: Textos cidade e temperatura
            VStack{
                Text("\(cidade ) - \(estado)")
                    .font(.system(size: 30, weight: .light))
                    .foregroundColor(.white)
                    
                Text("\(tempoHoje)º")
                    .font(.system(size: 70, weight: .medium))
                    .foregroundColor(.yellow)
                Spacer()
                
                Image(systemName: "cloud.sun.fill")
                    .font(.system(size: 80, weight: .light))
                    .foregroundStyle(.white, .yellow)
                    .padding(.bottom, 350)
            }
            .frame(width: 250, height: 650, alignment: .top)
            .zIndex(1)
          
            
            // MARK: Retangulo azul de fundo
            RoundedRectangle(cornerRadius: 15)
                .fill(.blue)
                .frame(width: 500, height: 1000, alignment: .center)
            
            
            
            // TODO: Melhorar o alinhamento dos ítens para que se adaptem a outras telas
            ZStack {
                
                // MARK: Retangulo inferior azul claro (cyan)
                HStack {
                    RoundedRectangle(cornerRadius: 15, style: .continuous)
                        .fill(.cyan)
                        .frame(width: 350, height: 200)
                }
                .frame(width: 250, height: 650, alignment: .bottom)
                .padding()
                
                
                // MARK: Textos superiores do retangulo cyan
                HStack{
                    
                    VStack{
                        Spacer()
                        Text("Seg")
                            .frame(minHeight: 200,   alignment: .topTrailing)
                            .padding(.horizontal, 20)
                    }
                    
                    VStack{
                        Spacer()
                        Text("Ter")
                            .frame(minHeight: 200,   alignment: .topTrailing)
                            .padding(.horizontal, 20)
                    }
                    
                    VStack{
                        Spacer()
                        Text("Qua")
                            .frame(minHeight: 200,   alignment: .topTrailing)
                            .padding(.horizontal, 20)
                    }
                    
                    VStack{
                        Spacer()
                        Text("Qui")
                            .frame(minHeight: 200,   alignment: .topTrailing)
                            .padding(.horizontal, 20)
                    }
                    
                }
                
                // MARK: Textos inferiores dentro do retangulo cyan
                HStack{
                    
                    VStack{
                        Spacer()
                        Text("\(tempoSeg)º")
                            .font(.system(size: 35, weight: .semibold))
                            .frame(minHeight: 90,   alignment: .topTrailing)
                            .padding(.horizontal, 8)
                    }
                    
                    VStack{
                        Spacer()
                        Text("\(tempoTer)º")
                            .font(.system(size: 35, weight: .semibold))
                            .frame(minHeight: 90,   alignment: .topTrailing)
                            .padding(.horizontal, 8)
                    }
                    
                    VStack{
                        Spacer()
                        Text("\(tempoQua)º")
                            .font(.system(size: 35, weight: .semibold))
                            .frame(minHeight: 90,   alignment: .topTrailing)
                            .padding(.horizontal, 8)
                    }
                    
                    VStack{
                        Spacer()
                        Text("\(tempoQui)º")
                            .font(.system(size: 35, weight: .semibold))
                            .frame(minHeight: 90,   alignment: .topTrailing)
                            .padding(.horizontal, 8)
                    }
                    
                }
                
                // MARK: núvens dentro do retangulo cyan
                HStack {
                    
                    VStack {
                        Spacer()
                        Image (systemName: "cloud.sun.fill")
                            .font(.system(size: 30, weight: .light))
                            .foregroundStyle(.white, .yellow)
                            .frame(minHeight: 150,   alignment: .topTrailing)
                            .padding(.horizontal, 15)
                    }
                    
                    VStack {
                        Spacer()
                        Image (systemName: "cloud.drizzle.fill")
                            .font(.system(size: 30, weight: .light))
                            .foregroundStyle(.white)
                            .frame(minHeight: 150,   alignment: .topTrailing)
                            .padding(.horizontal, 15)
                    }
                    
                    VStack {
                        Spacer()
                        Image (systemName: "cloud.rain.fill")
                            .font(.system(size: 30, weight: .light))
                            .foregroundStyle(.white, .yellow)
                            .frame(minHeight: 150,   alignment: .topTrailing)
                            .padding(.horizontal, 15)
                    }
                    
                    VStack {
                        Spacer()
                        Image (systemName: "cloud.heavyrain.fill")
                            .font(.system(size: 30, weight: .light))
                            .foregroundStyle(.white, .yellow)
                            .frame(minHeight: 150,   alignment: .topTrailing)
                            .padding(.horizontal, 15)
                    }

                }
                
                HStack{
                    
                    // MARK: linhas divisórias dos dias da semana                    
                    VStack{
                        Spacer()
                        
                        Rectangle()
                            .fill()
                            .foregroundColor(.white)
                            .frame(width: 0.5, height: 155)
                    }
                    .frame(width: 45, height: 600, alignment: .bottom)
                    .padding(.horizontal, 15)
                    
                    VStack{
                        Spacer()
                        
                        Rectangle()
                            .fill()
                            .foregroundColor(.white)
                            .frame(width: 0.5, height: 155)
                    }
                    .frame(width: 45, height: 600, alignment: .bottom)
                    .padding(.horizontal, 15)
                    
                    VStack{
                        Spacer()
                        
                        Rectangle()
                            .fill()
                            .foregroundColor(.white)
                            .frame(width: 0.5, height: 155)
                    }
                    .frame(width: 45, height: 600, alignment: .bottom)
                    .padding(.horizontal, 15)
                }
                
            }
            .frame(minWidth: 200, idealWidth: 400, maxWidth: 600, minHeight: 100, idealHeight: 300, maxHeight: 400, alignment: .center)
            .padding(.bottom, 20.0)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
