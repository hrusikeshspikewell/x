//
//  DommyTweets.swift
//  x
//
//  Created by Hrusikesh-Spikewell on 22/04/25.
//
import SwiftUI

let tweets: [Tweet] = [
    Tweet(user: User(name: "Elon Musk", handle: "elonmusk", avatarName: "Avatar"),
          content: "Welcome to the XClone! 🚀 Building UI with SwiftUI is awesome.",
          timestamp: Date(),
          images: ["Post"]),
    
    Tweet(user: User(name: "Jane Doe", handle: "janedoe", avatarName: "Avatar"),
          content: "SwiftUI makes layout so much easier!",
          timestamp: Date(),
          images: ["Post","Post","Post","Post","Post"]),
    
    Tweet(user: User(name: "Jane Doe", handle: "janedoe", avatarName: "Avatar"),
          content: "SwiftUI makes layout so much easier!",
          timestamp: Date(),
          images: ["Post","Post"]),
    
    Tweet(user: User(name: "John Appleseed", handle: "johnapple", avatarName: "Avatar"),
          content: "Just finished building a dark mode feature in SwiftUI. It’s seamless! 🌙",
          timestamp: Date(),
          images: ["Post","Post","Post"]),
    
    Tweet(user: User(name: "Emily Swift", handle: "emilyswiftdev", avatarName: "Avatar"),
          content: "State management in SwiftUI is 🔥. Loving @State and @Binding.",
          timestamp: Date(),
          images: ["Post","Post","Post","Post"]),
    
    Tweet(user: User(name: "Chris Coder", handle: "chrisdev", avatarName: "Avatar"),
          content: "SwiftUI animations are buttery smooth. 👏",
          timestamp: Date(),
          images: ["Post"]),
    
    Tweet(user: User(name: "Lisa Loop", handle: "lisaloop", avatarName: "Avatar"),
          content: "XClone is shaping up really well. Great job on the UI polish! 💯",
          timestamp: Date(),
          images: ["Post"]),
    
    Tweet(user: User(name: "Dev Bot", handle: "devbot3000", avatarName: "Avatar"),
          content: "Compiling... Compiling... Success! ✅ SwiftUI for the win.",
          timestamp: Date(),
          images: ["Post"]),
    
    Tweet(user: User(name: "Anna Design", handle: "annadesign", avatarName: "Avatar"),
          content: "Can we take a moment to appreciate how clean SwiftUI syntax is? 😍",
          timestamp: Date(),
          images: ["Post"]),
    
    Tweet(user: User(name: "Tom Tester", handle: "tomtests", avatarName: "Avatar"),
          content: "Testing UI in SwiftUI is surprisingly fun. XClone is my new playground.",
          timestamp: Date(),
          images: ["Post"])
]
