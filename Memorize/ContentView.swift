import SwiftUI
//test token
struct ContentView: View{
    let emojis: Array<String> = ["🌊","🩰","🍭","🍇","🌚"]
    var body: some View{
        HStack{
            ForEach(emojis.indices, id:\.self){
                index in CardView(content : emojis[index])
            }
           
        }
        .foregroundColor(.orange)
        .padding()
    }
}

struct CardView: View{
    let content : String
    @State var isFaceUp = true //you must specfiy this false value, you cannot having a var without value
    
    var body : some View{
        ZStack{
            //let means constant
            let base = RoundedRectangle(cornerRadius: 12)
            if isFaceUp{
               base.foregroundColor(.white)
               base.strokeBorder(lineWidth:2)
                Text(content).font(.largeTitle)
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
