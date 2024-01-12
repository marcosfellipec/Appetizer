//
//  RemoteImage.swift
//  Appetizer
//
//  Created by Marcos-F Costa on 09/01/24.
//

import SwiftUI

@MainActor
final private class ImageLoader: ObservableObject {
    let cache = NSCache<NSString, UIImage>()

    @Published var image: Image?
    @Published var isLoading = false

    func load(from urlString: String) async {
        isLoading = true
        let cacheKey = NSString(string: urlString)

        if let image = cache.object(forKey: cacheKey) {
            self.image = Image(uiImage: image)
            isLoading = false
            return
        }

        guard let url = URL(string: urlString) else { return }

        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            guard let image = UIImage(data: data) else { return }

            cache.setObject(image, forKey: cacheKey)
            self.image = Image(uiImage: image)
            self.isLoading = false
        }
        catch {
            self.isLoading = false
            print(error.localizedDescription)
        }
    }
}


private struct RemoteImageContainer: View {
    var image: Image?
    var body: some View {
        image?.resizable() ?? Image("food-placeholder").resizable()
    }
}

struct RemoteImage: View {
    @StateObject private var imageLoader = ImageLoader()
    var urlString: String

    var body: some View {
        ZStack {
            RemoteImageContainer(image: imageLoader.image)

            if imageLoader.isLoading {
                ProgressView()
                    .progressViewStyle(.circular)
                    .controlSize(.large)
                    .tint(.gray)

            }
        }
        .task {
                await imageLoader.load(from: urlString)
            }
    }
}
