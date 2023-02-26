# YouTubePlayPauseView
YouTube play-pause view implemented in details! 🤓

### How to use

You can use `YouTubePlayPauseView` just like any other SwiftUI View:

```swift
YouTubePlayPauseView(playing: $playing, continuousUpdate: true, color: .red)
    .frame(width: 100, height: 100)
    .onChange(of: playing) { playing in
        // do something if the state of the logo is changed
    }
```

For details see the Example app.

### Example

<p style="text-align:center;"><img src="https://github.com/stateman92/YouTubePlayPauseView/blob/main/Resources/screenrecording.gif?raw=true" width="50%" alt="Example"></p>
