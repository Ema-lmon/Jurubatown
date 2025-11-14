//
//  main.swift
//  Jurubatown
//
//  Created by REBECA EMANUELA CALMON DE ANDRADE ALVES on 14/11/25.
//

import Foundation

//00 INTRODUÇÃO
print("Bem-vindo ao reino mágico de Jurubatown! ✨")
print("Para iniciar sua jornada, por favor informe o seu nome: ")
let nome = readLine() ?? "Aventureiro"

// Diamantes
var diamantes = 0

print("Olá \(nome)! Chegou a hora de explorar nosso reino e se aventurar com as nossas tarefas mágicas.")
print("Para conhecer nosso castelo, digite 1. Para explorar nossa floresta misteirosa, digite 2: ")

//receber respota do tour
let visitaString = readLine() ?? "1"
let visita = Int(visitaString)

escolherPath(visitaEscolhida: visita ?? 3)

//Escolher entre castelo ou floresta
func escolherPath (visitaEscolhida: Int) {
    
    if visitaEscolhida == 1 {
        explorarCastelo()
    } else if visitaEscolhida == 2 {
        explorarFloresta() }
    else { print("A indecisão te levou para fora de Jurubatown. Você está destinado a viver em São Paulo.")}
    }


//1 EXPLORAR CASTELO
    func explorarCastelo() {
        print("Bem-vindo ao nosso castelo. Você está no salão real.")
        print("Aqui nós guardamos uma poderosa espada milenar capaz de derrotar qualquer ameaça. Para obtê-la, você deve resolver a charada a seguir com sabedoria... ")
        print("Para prosseguir, digite 1. Caso queira explorar nossa floresta, digite 2.")
        
        let getEspadaStr = readLine() ?? "1"
        let getEspada = Int(getEspadaStr)
        
        if getEspada == 1 {
            missaoEquipamento()
        } else if getEspada == 2 {
            escolherPath(visitaEscolhida: 2)
        }
    }

// 2 MISSÃO EQUIPAMENTO
func missaoEquipamento () {
    print(" O grande mago Hooks precisa usar 30 sementes mágicas para fazer uma xícara de chá de invisibilidade.")
    print("Se ele tem 120 sementes mágicas, quantas xícaras de chá ele poderá tomar?")
    
    let xicarasString = readLine() ?? "0"
    let xicara = Int(xicarasString)
    
    if xicara == 4 {
        print("Bom trabalho! Agora você é detentor da espada milenar de Jurubatown. Use-a com sabedoria...")
        print("Oh não! O dragão Vader está atacando atacando nosso reino. Para derrotá-lo vamos precisar de alguém destemido")
        print("Para aceitar essa missão, digite 1. Para explorar nossa floresta, digite 2.")
        
        let fightDragonStr = readLine() ?? "1"
        let fightDragon = Int(fightDragonStr)
        
        if fightDragon == 1 {
            derrotarDragao()
            
        } else if fightDragon == 2  {
            explorarFloresta()
            
        } else { print("Hmmmm... parece que alguém está precisando de um descanso mágico.")
        }
    }
}

//3 MISSÃO DERROTAR DRAGÃO
func derrotarDragao () {
    print("A cada 6 meses, o dragão Vader desperta da sua soneca semestral.")
    print("Pressione 1 para atacar com sua espada milenar ou 2 para fugir")
    
    let acao = readLine() ?? "2"
    
    switch acao {
    case "1":
        
        diamantes += 100
        print("O dragão Vader foi derrotado! Sua bravura foi recompensada com 100 diamantes 💎 ")
        print("Sua exploração no castelo chegou ao fim! Digite 1 para conhecer o lado mais selvagem do nosso reino ou digite 2 para encerrar sua jornada")
        
        let choosePath = readLine() ?? "2"
        let choose = Int(choosePath)
        
        if choose == 1 {
            explorarFloresta()
        }
        if choose == 2 {
            print("Obrigada por visitar o reino de Jurubatown. Foi uma honra")}
        
        
    case "2":
        print("Você decide recuar por enquanto. O dragão poderá voltar a qualquer momento...")
        print("Digite 'Floresta' para conhecer o lado mais selvagem do nosso reino.")
        
        let choosePath1 = readLine()
        
        if choosePath1 == "Floresta" {
            explorarFloresta()
        } default:
        print("A indecisão é perigosa...Tente novamente.")
        derrotarDragao()
    }
}

    


//FLORESTA

// 1 EXPLORAR FLORESTA
func explorarFloresta() {
    print("Você está na Floresta encantada. Aqui nós cultivamos ervas poderosas e colhê-las te recompensará com alguns diamantes. Para continuar, digite 1. Caso queira explorar o castelo, digite 2")
    
    let colherStr = readLine() ?? ""
    let colher = Int (colherStr)
    
    if colher == 1 {
        colherErvas()
    } else if colher == 2 {
        escolherPath(visitaEscolhida: 1)
    }
}

//2 ARRANCAR ERVAS

func colherErvas () {
    
    print("Hora de coletar ervas na nossa floresta encantada...")
    print("Digite quantas ervas você conseguiu colher: ")
    
    let ervasString = readLine() ?? "0"
    let ervas = Int(ervasString) ?? 0
    
    enum ErroMissao: Error {
        case quantidadeInsuficiente
    }
    
    func arrancarErvas(qtdEncontrada: Int) throws {
        
        if qtdEncontrada < 3 {
            throw ErroMissao.quantidadeInsuficiente
            
        } else {
            print("Você colheu \(qtdEncontrada) ervas! Missão concluída!")
            print("Casso queira conhecer nosso castelo, digite 1. Caso queira encerrar sua jornada, digite 2")
            
            let escolhaStr = readLine() ?? "2"
            let escolha = Int(escolhaStr)
            
            if escolha == 1 {
                explorarCastelo()
                
            } else if escolha == 2 {
                print("Obrigada por visitar o reino de Jurubatown. Foi uma honra")}
            
            
            do {
                try arrancarErvas(qtdEncontrada: ervas)
            } catch {
                print("Você não colheu ervas suficientes. ")
            }
        }
    }
}

    


    
    
    
    
   

    
