//
//  AVCaptureVideoPreviewView.swift
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
// swiftlint:disable force_cast

import UIKit
import AVFoundation


final class AVCaptureVideoPreviewView: UIView {

    override class var layerClass: AnyClass {
        return AVCaptureVideoPreviewLayer.self
    }

    private var preview: AVCaptureVideoPreviewLayer {
        return layer as! AVCaptureVideoPreviewLayer
    }

    open var session: AVCaptureSession? {
        set(value) {
            preview.session = value
        }
        get {
            return preview.session
        }
    }


    open var connection: AVCaptureConnection? {
        return preview.connection
    }

    open var videoGravity: AVLayerVideoGravity {
        set(value) {
            preview.videoGravity = value
        }
        get {
            return preview.videoGravity
        }
    }

}
