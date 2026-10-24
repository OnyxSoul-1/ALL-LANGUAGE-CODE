// 43 - F# - Functional Math Spell Matrix
module SpellMatrix

let spellPower basePower mana = basePower * (1.0 + mana / 100.0)

[<EntryPoint>]
let main _ =
    let matrix = [ for x in 1..3 -> spellPower 10.0 (float (x * 10)) ]
    printfn "F#: Functional Math Spell Matrix"
    printfn "Cast vector: %A | total = %.1f" matrix (List.sum matrix)
    0
