//
//  StoreEnrollViewController.swift
//  ConneCo
//
//  Created by jaegu park on 5/5/24.
//

import UIKit

class StoreEnrollViewController: UIViewController, SampleProtocol4, UITextFieldDelegate {
    
    let imagePickerController = UIImagePickerController()
    
    var storeData: StoreResultModel!
    
    func addressSend(data: String) {
        addressTextField.text = "  " + data
        addressTextField.sizeToFit()
    }
    
    @IBOutlet weak var firstImageView: UIImageView!
    @IBOutlet weak var secondImageView: UIImageView!
    @IBOutlet weak var thirdImageView: UIImageView!
    @IBOutlet weak var fourthImageView: UIImageView!
    @IBOutlet weak var fifthImageView: UIImageView!
    @IBOutlet weak var CameraButton: UIButton!
    @IBOutlet weak var ImageLabel1: UILabel!
    @IBOutlet weak var searchButton: UIButton!
    @IBOutlet weak var addressTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        enrollAlertEvent()
        
        addressTextField.delegate = self
        
        self.imagePickerController.delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }
    
    func enrollAlertEvent() {
        let photoLibraryAlertAction = UIAlertAction(title: "앨범에서 사진 선택", style: .default) {
            (action) in
            self.openAlbum() // 아래에서 설명 예정.
        }
        
        let cameraAlertAction = UIAlertAction(title: "사진 촬영", style: .default) {
            (action) in
            self.openCamera() // 아래에서 설명 예정.
        }
    }
    
    @IBAction func camera_Tapped(_ sender: Any) {
        openAlbum()
    }
    
    @IBAction func addressButton(_ sender: Any) {
        guard let svc2 = self.storyboard?.instantiateViewController(identifier: "StoreAddressVC") as? StoreAddressViewController else {
            return
        }
        svc2.delegate = self
        
        self.present(svc2, animated: true)
    }
    
    @IBAction func Enroll_Complete(_ sender: Any) {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.2) {
            let parmeterDatas = StoreModel(storeImages: [" "], request: [StoreInfo(name: " ", address: " ", storeNumber: " ", operatingTime: " ", description: " ")])
            APIStorePost.instance.SendingPostReborn(parameters: parmeterDatas) { result in self.storeData = result }
            self.presentingViewController?.dismiss(animated: true, completion: nil)
        }
    }
}

extension StoreEnrollViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    func openAlbum() {
        self.imagePickerController.sourceType = .photoLibrary
        present(self.imagePickerController, animated: true, completion: nil)
    }

    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey: Any]) {
        if let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            firstImageView.image = image
            CameraButton.isEnabled = false
            CameraButton.isHidden = true
            ImageLabel1.isHidden = true
        } else {
            print("error detected in didFinishPickinMEdiaWithInfo method")
        }
        dismiss(animated: true, completion: nil)
    }
    
    func openCamera() {
        if (UIImagePickerController.isSourceTypeAvailable(.camera)) {
            self.imagePickerController.sourceType = .camera
            present(self.imagePickerController, animated: false, completion: nil)
        } else {
            print("Camera is not available as for now")
        }
    }
}
