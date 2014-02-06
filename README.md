# STMGradualImageView

[![Version](http://cocoapod-badges.herokuapp.com/v/STMGradualImageView/badge.png)](http://cocoadocs.org/docsets/STMGradualImageView)
[![Platform](http://cocoapod-badges.herokuapp.com/p/STMGradualImageView/badge.png)](http://cocoadocs.org/docsets/STMGradualImageView)

STMGradualImageView is a UIImageView subclass which cross-fades the `image` property update.

![Animation](https://raw.github.com/soutaro/GradualImageView/master/example.gif)

## Usage

To run the example project; clone the repo, and run `pod install` from the Project directory first.

## Installation

STMGradualImageView is available through [CocoaPods](http://cocoapods.org), to install
it simply add the following line to your Podfile:

    pod "STMGradualImageView"

## API

It replaces the `image` property from `UIImageView`, such that the update shows an animation which cross-fades the existing and new image. It also defines two methods, `setImage:animated` and `setImage:animatedInDuration:completion`, to give more controls.

    STMGradualImageView *imageView = self.imageView;
    imageView.image = anImage;
    [imageView setImage:anImage animated:YES];
    [imageView setImage:anImage animatedInDuration:0.3f completion:^(BOOL completed) {
        ....
    }];

## Author

Soutaro Matsumoto, matsumoto@soutaro.com

## License

STMGradualImageView is available under the MIT license. See the LICENSE file for more info.

