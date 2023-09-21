# Transparency
A library for creating transparent home screen widgets.

Supported device: iPhone 11 ~ 15; iPhone 4.7 inch; iPhone 5.5 inch.

---

## Installation

Swift Package `https://github.com/wangyiwei2015/Transparency`



## Usage

```swift
import Transparency
```

```swift
let bgGenerator = WidgetBackground()
let images = bgGenerator.getImages(for: /* Some Screenshot */)

// Get images for each widget. e.g.
images.smallTopLeft // CGImage

// Get all images in an array. e.g.
images.flattened() // [CGImage]
```

