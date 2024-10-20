
import Foundation

func longest_Common_Seq(_ s1:String , _ s2:String ,_ i:Int,_ j:Int) -> Int{
    let sm = Array(s1)
    let sn = Array(s2)
    if s1.count == i || s2.count == j{
      return 0
    }else if sm[i] == sn[j]{
        return 1 + longest_Common_Seq(s1,s2,i+1,j+1)
    }else{
        return max(longest_Common_Seq(s1,s2,i+1,j),longest_Common_Seq(s1,s2,i,j+1))
    }
}

