import SwiftUI
struct ContentView: View{
    var body: some View{
        HStack{
            CardView(isFaceUp: true)
            CardView()
            CardView()
            CardView()
        }
        .foregroundColor(.orange)
        .padding()
    }
}

struct CardView: View{
    @State var isFaceUp = false //you must specfiy this false value, you cannot having a var without value
    
    var body : some View{
        ZStack{
            //let means constant
            let base = RoundedRectangle(cornerRadius: 12)
            if isFaceUp{
               base.foregroundColor(.white)
               base.strokeBorder(lineWidth:2)
                Text("😅").font(.largeTitle)
            }else{
                base.fill()
            }
        }.onTapGesture  {
            print("tapped")
            isFaceUp.toggle()
            
        }
    }
}
//views are immutable, isFaceuP, if you wanna change, make it @State

struct Previews_ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
