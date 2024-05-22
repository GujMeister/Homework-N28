import SwiftUI

struct ChatsView: View {
    
    @State private var firstGradient: Color = .blue
    @State private var secondGradient: Color = .orange
    
    var body: some View {
        
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .fill(
                    LinearGradient(
                    gradient: Gradient(colors: [firstGradient, secondGradient]),
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                ))
            
            VStack {
                HStack {
                    Button(action: {
                        firstGradient = colors.randomElement() ?? .blue
                        secondGradient = colors.randomElement() ?? .orange
                    }) {
                        Image(systemName: "ellipsis.message.fill")
                            .foregroundColor(.white)
                            .frame(width: 32, height: 32)
                            .background(Color.white.opacity(0.4))
                            .clipShape(Circle())
                    }
                    Spacer()
                }
                
                Text("ჩატაობა")
                    .font(.system(size: 9))
                    .bold()
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity, alignment: .topLeading)
                
                Spacer()
            }
            .padding(.leading, 16).padding(.top, 12)

            HStack {
                Spacer()
                Image("MessagesBackground")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 100)
                    .offset(x: 30, y: 10)
            }
        }
        .frame(width: 165, height: 110)
        .clipShape(RoundedRectangle(cornerRadius: 20))
    }
}

#Preview {
    ChatsView()
}

