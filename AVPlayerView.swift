//
//  AVPlayerView.swift
//  AVFoundation Extensions
//
//  Copyright (c) 2018 Damian Rzeszot
//
//  Permission is hereby granted, free of charge, to any person obtaining
//  a copy of this software and associated documentation files (the
//  "Software"), to deal in the Software without restriction, including
//  without limitation the rights to use, copy, modify, merge, publish,
//  distribute, sublicense, and/or sell copies of the Software, and to
//  permit persons to whom the Software is furnished to do so, subject to
//  the following conditions:
//
//  The above copyright notice and this permission notice shall be
//  included in all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
//  EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
//  MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
//  NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
//  LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
//  OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
//  WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
//

import AVFoundation
import UIKit



public class AVPlayerView: UIView {


    // MARK: -

    override public class var layerClass: AnyClass {
        return AVPlayerLayer.self
    }

    private var playerLayer: AVPlayerLayer! {
        return layer as? AVPlayerLayer
    }


    // MARK: -

    open var player: AVPlayer? {
        set(value) {
            playerLayer.player = player
        }
        get {
            return playerLayer.player
        }
    }

    open var videoGravity: AVLayerVideoGravity {
        set(value) {
            playerLayer.videoGravity = value
        }
        get {
            return playerLayer.videoGravity
        }
    }

    open var isReadyForDisplay: Bool {
        return playerLayer.isReadyForDisplay
    }

    @available(iOS 7.0, *)
    open var videoRect: CGRect {
        return playerLayer.videoRect
    }

    @available(iOS 9.0, *)
    open var pixelBufferAttributes: [String: Any]? {
        set(value) {
            playerLayer.pixelBufferAttributes = value
        }
        get {
            return playerLayer.pixelBufferAttributes
        }
    }

}
