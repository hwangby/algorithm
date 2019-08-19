var N = readLine()!
print(String(N.sorted(by: { (first, second) -> Bool in
    return first > second
})))
