//
//  AvatarImage.swift
//  SwiftUIAvatar
//
//  Created by Angelos Staboulis on 8/2/26.
//

import SwiftUI

struct Avatar: View {
    var image: Image?
    var firstName: String
    var lastName: String
    var placeHolderImage:String
    var size: CGFloat?
    var roundness: CGFloat = 2
    var background: Color = .clear
    var placeholder: Bool?
    
    private var resolvedSize: CGFloat { size ?? 44 } // default avatar size
    
    private var initials: String {
        let f = firstName.first.map(String.init) ?? ""
        let l = lastName.first.map(String.init) ?? ""
        return (f + l).uppercased()
    }
    
    private var cornerRadius: CGFloat {
        guard let size = size else { return 0 }
        return size / roundness
    }
    
    var body: some View {
        ZStack {
            if placeholder == false {
                if let image {
                    image
                        .resizable()
                        .scaledToFill()
                }
                else {
                    Color.gray.opacity(0.3)
                    Text(initials)
                        .font(.system(size: resolvedSize * 0.35, weight: .bold))
                        .foregroundColor(.gray.opacity(0.8))
                }
            }
            else {
                Color.gray.opacity(0.3)
                Image(systemName: placeHolderImage)
                    .font(.system(size: resolvedSize * 0.35))
                    .foregroundColor(.gray.opacity(0.7))
            }
        }
        .frame(width: size, height: size)
        .clipShape(
                roundness == 2
                ? AnyShape(Circle())
                : AnyShape(RoundedRectangle(cornerRadius: cornerRadius))
        )
        .clipped()
    }
}
