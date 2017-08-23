//
//  CameraViewController.swift
//  dogCapture
//
//  Created by Allison Schultz on 8/10/17.
//  Copyright © 2017 pupVenture. All rights reserved.
//

import UIKit
import AVFoundation

class CameraViewController: UIViewController, AVCaptureVideoDataOutputSampleBufferDelegate{
    

    var takenPhoto:UIImage?
    let captureSession = AVCaptureSession()
    var previewLayer:CALayer!
    var captureDevice:AVCaptureDevice!
    var takePhoto = false
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        prepareCamera()
        beginSession()
        
    }
    
    func prepareCamera() {
        captureSession.sessionPreset = AVCaptureSessionPresetPhoto
        if let availableDevices = AVCaptureDeviceDiscoverySession(deviceTypes: [.builtInWideAngleCamera], mediaType: AVMediaTypeVideo, position: .back).devices {
            captureDevice = availableDevices.first
        }
            }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touchPoint = touches.first! as UITouch
        let screenSize = cameraView.bounds.size
        let focusPoint = CGPoint(x: touchPoint.location(in: cameraView).y / screenSize.height, y: 1.0 - touchPoint.location(in: cameraView).x / screenSize.width)
        
        if let device = captureDevice {
            do {
                try device.lockForConfiguration()
                if device.isFocusPointOfInterestSupported {
                    device.focusPointOfInterest = focusPoint
                    device.focusMode = AVCaptureFocusMode.autoFocus
                }
                if device.isExposurePointOfInterestSupported {
                    device.exposurePointOfInterest = focusPoint
                    device.exposureMode = AVCaptureExposureMode.autoExpose
                }
                device.unlockForConfiguration()
                
            } catch {
                // Handle errors here
            }
        }
    }
    
    func beginSession() {
        do {
            let captureDeviceInput = try AVCaptureDeviceInput(device: captureDevice)
            captureSession.addInput(captureDeviceInput)
        }catch{print(error.localizedDescription)}
        
        if let previewLayer = AVCaptureVideoPreviewLayer(session: captureSession) {
            self.previewLayer = previewLayer
            self.view.layer.addSublayer(self.previewLayer)
            self.previewLayer.frame = self.view.layer.frame
            captureSession.startRunning()
            let dataOutput = AVCaptureVideoDataOutput()
            dataOutput.videoSettings = [(kCVPixelBufferPixelFormatTypeKey as NSString):NSNumber(value:kCVPixelFormatType_32BGRA)]
            dataOutput.alwaysDiscardsLateVideoFrames = true
            
            if captureSession.canAddOutput(dataOutput) {
                captureSession.addOutput(dataOutput)
            }
            captureSession.commitConfiguration()
            
            let queue = DispatchQueue(label: "what is this")
            dataOutput.setSampleBufferDelegate(self, queue: queue)
        }
    }
    
    
    
    @IBOutlet weak var cameraView: UIView!

    
    
    @IBAction func shutterButton(_ sender: Any) {
        takePhoto = true
        
        let stillImageOutput = AVCaptureStillImageOutput.init()
        stillImageOutput.outputSettings = [AVVideoCodecKey: AVVideoCodecJPEG]
        self.captureSession.addOutput(stillImageOutput)
        
        if let videoConnection = stillImageOutput.connection(withMediaType:AVMediaTypeVideo){
            stillImageOutput.captureStillImageAsynchronously(from:videoConnection, completionHandler: {
                (sampleBuffer, error) in
                let imageData = AVCaptureStillImageOutput.jpegStillImageNSDataRepresentation(sampleBuffer)
                let dataProvider = CGDataProvider.init(data: imageData as! CFData)
                let cgImageRef = CGImage.init(jpegDataProviderSource: dataProvider!, decode: nil, shouldInterpolate: true, intent: .defaultIntent)
                var image = UIImage.init(cgImage: cgImageRef!, scale: 1.0, orientation: .right)
                UIImageWriteToSavedPhotosAlbum(image, nil, nil, nil)
            })
        }
        
     
        }
    
    @IBAction func changeCameraButton(_ sender: Any) {
    }
    
    

    }
    
   
  

    
    
    
    
    
    
    
    

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    


