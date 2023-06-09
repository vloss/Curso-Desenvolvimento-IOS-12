import UIKit

//// Arrays
//var lista_compras: [String] = []
//lista_compras.append("Refri")
//lista_compras.append("Queijo")
//lista_compras.append("Alface")
//lista_compras.append("Alface") // Itens iguais se repetem
//print(lista_compras)
//
//// Sets
//var lista = Set<String>()
//lista.insert("Suco")
//lista.insert("Pão")
//lista.insert("Tomate")
//lista.insert("Tomate") // Não se repente os itens iguais
//print(lista)
//
//// Dicionarios
//var animais = [String: String]()
//animais["urso"] = "Animal Branco que hiberna"
//animais["cachorro"] = "Melhor amigo do Homem"
//print(animais["urso"]) // Optional pq não sabe se realmente existe
//print(animais["urso"]!) // ! dá a certeza que realmente existe
//
//// Dicionario Meses do Ano
//var meses = [Int: String]()
//meses[1] = "Janeiro"
//meses[2] = "Fevereiro"
//print(meses[2]!)
//
//
//// Access Shared Defaults Object
//let userDefaults = UserDefaults.standard
//
//let dictionary = [
//    "A": "One",
//    "B": "Two",
//    "C": "Three"
//]
//
//userDefaults.set(dictionary, forKey: "myKey") // set
//let strings = userDefaults.object(forKey: "myKey") // get


// Access Shared Defaults Object
let defaults = UserDefaults.standard

//let array = ["Hello", "World"]
//defaults.set(array, forKey: "SavedArray")

let dict = ["Name": "Paul", "Country": "UK"]
defaults.set(dict, forKey: "SavedDict")

let SavedDict = defaults.dictionary(forKey: "SavedDict")!

print(SavedDict["Name"])


