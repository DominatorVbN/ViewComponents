////
////  VideoPlayerView.swift
////  ViewComponents
////
////  Created by dominator on 01/07/20.
////
//
import SwiftUI
import AVKit

struct VideoPlayerComponent: View {
    
    @Namespace var namespace
    @State var isShowingFull = false
    var backgroundColor = Color.secondary
    var player = AVPlayer(
        url:  Bundle.main.url(forResource: "wwdc", withExtension: "mp4")!
    )
    
    var button: some View{
        Image(
            systemName: isShowingFull ? "arrow.down.right.and.arrow.up.left" : "arrow.up.left.and.arrow.down.right"
        )
            .font(.caption)
            .foregroundColor(.white)
            .padding(.horizontal)
            .padding(.vertical, 10)
            .background(
                RoundedRectangle(cornerRadius: 5)
                    .fill(backgroundColor)
            )
            .onTapGesture {
                self.isShowingFull.toggle()
            }
            .padding(5)
            .colorScheme(.dark)
        
    }
    
    @ViewBuilder
    var body: some View {
        Group{
            if isShowingFull{
                    VideoPlayer(player: player)
                        .edgesIgnoringSafeArea(.all)
                        .overlay(
                            button,
                            alignment: .top
                        )
                        .matchedGeometryEffect(
                            id: 1,
                            in: namespace
                        )

            }else{
                VideoPlayer(player: player)
                    .aspectRatio(
                        1.3,
                        contentMode: .fit
                    )
                    .overlay(
                        button,
                        alignment: .top
                    )
                    .matchedGeometryEffect(
                        id: 1,
                        in: namespace
                    )
            }
        }
        .animation(.default)
        .navigationTitle("VideoPlayer")
    }
    
    
}

       

struct VideoPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        if #available(OSX 11.0, *) {
            VideoPlayerComponent()
        }
    }
}
