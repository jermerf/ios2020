import Foundation

func foolishLabels(PrettyName name: String) -> Void{
    print(name)
}
foolishLabels(PrettyName: "Jermionee Granger")

func foo(_ fname:String, _ lname:String )  {
    if fname == "Paul" {
        print("Hey paul, how are things?")
    }else{
        print("Stranger danger")
    }
}

// foo("Dan","Giamatti")

func dealingNils(_ name:String?){
    if let realName = name {
        let sentence = "Hi there " + realName
        print(sentence)
    }else{
        print("Nil for name")
    }
}

//dealingNils("Tesla")
//dealingNils(nil)

func coalescingOperator(_ optName:String?){
    let realName = optName ?? "It's nil"
    print(realName)
}
//coalescingOperator("Tesla")
//coalescingOperator(nil)



func descriptiveLabels(FirstName fn: String, LastName ln: String){
    descriptiveLabels(FirstName:fn,LastName: ln,nil)
}
func descriptiveLabels(FirstName fn: String, LastName ln: String, _ hou: String?){
    let house = hou ?? "Targaryen"
    print("This person's name is \(fn) \(ln) of house \(house)")
}

//descriptiveLabels(FirstName: "Jeremony", LastName: "Pi")

var num = 3.9999
var iNum = Int(num)

//print(iNum)

var list:[Int] = []

for i in (1...10).reversed(){
    list.append(i)
}

//print(list)
//list.reverse()
//print(list)

func mult(Num1 n1:Int, Num2 n2:Double) -> Int{
    return Int(Double(n1)*n2)
}

//print(mult(Num1:2, Num2:2.999999))

var myArr: [Int]  = [4,2,7,6,1,9]
myArr.removeFirst()
print(myArr)









