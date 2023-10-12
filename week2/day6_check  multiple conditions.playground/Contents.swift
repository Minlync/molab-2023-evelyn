enum Money {
    case effort, time, patience, tire, persist
}

let success: Money = .tire

if success == .effort && success == .time {
    print("You can make it.")
} else if success == .time {
    print("Just wait.")
} else if success == .patience {
    print("Keep doing.")
} else if success == .tire {
    print("I want sleep.")
} else {
    print("Just try again!")
}

switch success {
case .effort, .time:
    print("You can make it.")
case .patience:
    print("Keep doing.")
case .tire:
    print("I want sleep.")
case .persist:
    print("Sleep!")
}
