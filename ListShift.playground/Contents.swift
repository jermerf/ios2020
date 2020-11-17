import Foundation

var list:[Int] = [0,0,1,0,0,0,0,0,0,0,0]
print(list)

func adjustList(){
    if let i = list.firstIndex(of: 1){
        list[i + 1] = 1
        print(list)
    }
}

adjustList()
adjustList()
adjustList()
