//
//  main.swift
//  Jurubatown
//
//  Created by REBECA EMANUELA CALMON DE ANDRADE ALVES on 14/11/25.
//

import Foundation

//INTRODUÇÃO
print("Bem-vindo ao reino mágico de Jurubatown! ✨")
print("Para iniciar sua jornada, por favor informe o seu nome: ")
let nome = readLine() ?? "Aventureiro"


// Diamantes
var diamantes = 0

//Escolher entre castelo ou floresta
print("Olá \(nome)! Chegou a hora de explorar nosso reino e se aventurar com as nossas tarefas mágicas.")
print("Para conhecer nosso castelo, digite 1. Para explorar nossa floresta misteirosa, digite 2")

//Missão derrotar Dragão
    func derrotarDragao () {
        print("A cada 6 meses, o dragão Vader desperta da sua soneca semestral.")
        print("Pressione 1 para atacar com sua espada milenar ou 2 para fugir")
        
        let acao = readLine() ?? "2"
        
        switch acao {
        case "1":
            
            diamantes += 100
            
            print("O dragão Vader foi derrotado! Sua bravura foi recompensada com 100 diamantes 💎 ")
            print("Sua exploração no castelo chegou ao fim! Digite 'Floresta' para conhecer o lado mais selvagem do nosso reino ou digite 'sair'para encerrar sua jornada")
            
            let choosePath = readLine()
            
            if choosePath == "Floresta" {
                explorarFloresta()
            }
        case "2":
            print("Você decide recuar por enquanto. O dragão poderá voltar a qualquer momento...")
        default:
            print("A indecisão é perigosa... o dragão ficou confuso e voltou a dormir.")
        }
    }


// GANHAR ESPADA - MISSÃO CASTELO
    func missaoEquipamento () {
        print(" O grande mago Hooks precisa usar 30 sementes mágicas para fazer uma xícara de chá de invisibilidade.")
        print("Se ele tem 120 sementes mágicas, quantas xícaras de chá ele poderá tomar?")
        
        let xicarasString = readLine() ?? "0"
        let xicara = Int(xicarasString)
        
        if xicara == 4 {
            print("Bom trabalho! Agora você é detentor da espada milenar de Jurubatown. Use-a com sabedoria...")
            print("Oh não! O dragão Vader está atacando atacando nosso reino. Para derrotá-lo vamos precisar de alguém destemido")
            print("Para aceitar essa missão, digite 1")
            
            let fightDragonStr = readLine() ?? "1"
            let fightDragon = Int(fightDragonStr)
            
            if fightDragon == 1 {
                derrotarDragao()
            }
        } else {
            print("Hmmmm... parece que alguém está precisando de um descanso mágico. Tente novamente!")
        }
    }


//CASTELO
func explorarCastelo() {
    print("Bem-vindo ao nosso castelo. Você está no salão real.")
    print("Aqui nós guardamos uma poderosa espada milenar capaz de derrotar qualquer ameaça. Para obtê-la, você deve resolver a charada a seguir com sabedoria... ")
    print("Para prosseguir, digite 1")
    
    let getEspadaStr = readLine() ?? "1"
    let getEspada = Int(getEspadaStr)
    
    if getEspada == 1 {
        missaoEquipamento()
    }
}
    
    
//FLORESTA
    
    enum ErroMissao: Error {
        case quantidadeInsuficiente
    }
    
    func arrancarErvas(qtdEncontrada: Int) throws {
        if qtdEncontrada < 3 {
            throw ErroMissao.quantidadeInsuficiente
        }
        print("Você arrancou \(qtdEncontrada) ervas daninhas! Missão concluída!")
    }
    
    print("Hora de coletar ervas na nossa floresta encantada...")
    print("Digite quantas ervas você conseguiu colher:")
    
    let ervasString = readLine() ?? "0"
    let ervas = Int(ervasString) ?? 0
    
    do {
        try arrancarErvas(qtdEncontrada: ervas)
        diamantes += 30
        print("Você ganhou 30 diamantes! 💎 ")
    } catch {
        print("Você não arrancou ervas suficientes...")
    }
    
    
//Conhecer floresta
    func explorarFloresta() {
        print("Você está na Floresta encantada. Aqui nós cultivamos ervas poderosas e colhê-las te recompensará com alguns diadamentes. Para continuar, digite 1. Caso queira retornar ao menu inicial, digite 2")
    }
    var colherStr = readLine() ?? ""
    var colher = Int (colherStr)
    
    if colher == 1 {
        arrancarErvas(qtdEncontrada: Int)
    }
    
    
//receber respota do tour
    let visitaString = readLine() ?? "1"
    let visita = Int(visitaString)

    if visita == 1 {
        explorarCastelo()
    } else if visita == 2 {
        explorarFloresta() }
    
   

    
