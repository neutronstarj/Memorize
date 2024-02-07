import SwiftUI
struct ContentView: View{
    var body: Text{
        Text("hello")
    }
}

struct CardView: View{
    var isFaceUo : Bool = false
    var body : some View{
        ZStack(content:{
            if isFaceUo{
                RoundedRectangle(cornerRadius: 12).foregroundColor(.white)
                RoundedRectangle(cornerRadius: 12).strokeBorder(lineWidth: 2)
                Text("😅").font(.largeTitle)
            }else{
                RoundedRectangle(cornerRadius: 12)
            }
        })
    }
}

struct Previews_ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
