import SwiftUI

@main
struct DandanliApp: App {
    @StateObject var history = MatchHistory()
    @StateObject var uploadQueue = UploadRetryQueue()

    var body: some Scene {
        WindowGroup {
            NavigationView {
                SplashScreen()
            }
            .environmentObject(history)
            .environmentObject(uploadQueue)
            .preferredColorScheme(.light)
        }
    }
}