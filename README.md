# YouTubePlayPauseView
YouTube play-pause view implemented in details! 🤓

## Setup

Add the following to `Package.swift`:

```swift
.package(url: "https://github.com/stateman92/YouTubePlayPauseView", exact: .init(0, 0, 2))
```

[Or add the package in Xcode.](https://developer.apple.com/documentation/xcode/adding-package-dependencies-to-your-app)

## Usage

```swift
YouTubePlayPauseView(playing: $playing, continuousUpdate: true, color: .red)
    .frame(width: 100, height: 100)
    .onChange(of: playing) { playing in
        // do something if the state of the logo is changed
    }
```

For details see the Example app.

## Example

<p style="text-align:center;"><img src="https://github.com/stateman92/YouTubePlayPauseView/blob/main/Resources/screenrecording.gif?raw=true" width="50%" alt="Example"></p>
