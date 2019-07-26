let grade = readLine()
if let grade = grade {
    let G: Int = Int(grade)!    
    if G >= 90 {
        print("A")
    } else if G >= 80 {
        print("B")
    } else if G >= 70 {
        print("C")
    } else if G >= 60 {
        print("D")
    } else {
        print("F")
    }
}