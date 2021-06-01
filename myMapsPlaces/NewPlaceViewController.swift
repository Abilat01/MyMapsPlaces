//
//  NewPlaceViewController.swift
//  myMapsPlaces
//
//  Created by Danya on 27.05.2021.
//

import UIKit

class NewPlaceViewController: UITableViewController, UINavigationControllerDelegate {
    
    var newPlace = Place()
    var imegeIsChanged = false
    
    @IBOutlet weak var saveButton: UIBarButtonItem!
    @IBOutlet weak var placeName: UITextField!
    @IBOutlet weak var placeLocation: UITextField!
    @IBOutlet weak var placeType: UITextField!
    @IBOutlet weak var placeImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.tableFooterView = UIView()
        saveButton.isEnabled = false
        placeName.addTarget(self, action: #selector(textFieldChanged), for: .editingChanged)

    }
    
    //MARK: - Table view delegate
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if indexPath.row == 0 {
            
//           let cameraIcon = #imageLiteral(resourceName: "camera")
//            let photoIcon = #imageLiteral(resourceName: "photo")
            let cameraIcon = UIImage(named: "camera")
            let photoIcon = UIImage(named: "photo") // не работает
            
            
            
            let actionSheet = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
            actionSheet.modalPresentationStyle = .popover
            
            
            let camera = UIAlertAction(title: "Camera", style: .default) { _ in
                self.chooseImegePicker(sourse: .camera)
            }
           
            camera.setValue(cameraIcon, forKey: "image") //не работает
            camera.setValue(CATextLayerAlignmentMode.left, forKey: "titleTextAlignment")
            
        
            
            let photo = UIAlertAction(title: "Photo", style: .default) { _ in
                self.chooseImegePicker(sourse: .photoLibrary)
            }
           
            photo.setValue(photoIcon, forKey: "image") // не работает
            photo.setValue(CATextLayerAlignmentMode.left, forKey: "titleTextAlignment")
            
            let cancel = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
            
            
            actionSheet.addAction(camera)
            actionSheet.addAction(photo)
            actionSheet.addAction(cancel)
            
            present(actionSheet, animated: true, completion: nil)
            
            
        } else {
            view.endEditing(true)
        }
    }
    
    @IBAction func ccancelAction(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
    }
    
    
}

 //MARK: - Text field delegate

extension NewPlaceViewController: UITextFieldDelegate {
    
    //Скрываем клавиатуру по нажатию на Done
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    @objc private func textFieldChanged() {
        if placeName.text?.isEmpty == false {
            saveButton.isEnabled = true
        } else {
            saveButton.isEnabled = false
        }
    }
    
    func saveNewPlace() {
        //newPlace = Place(name: placeName.text!,
                         //location: placeLocation.text,
                         //type: placeType.text,
                         //image: placeImage.image,
                         //restrantImage: nil)
    }
    
}

//MARK: work with image
extension NewPlaceViewController: UIImagePickerControllerDelegate {
    
    func chooseImegePicker(sourse: UIImagePickerController.SourceType) {
        
        if UIImagePickerController.isSourceTypeAvailable(sourse) {
            let imagePicker = UIImagePickerController()
            imagePicker.delegate = self
            imagePicker.allowsEditing = true
            imagePicker.sourceType = sourse
            present(imagePicker, animated: true, completion: nil)
        }
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        placeImage.image = info[.editedImage] as? UIImage
        placeImage.contentMode = .scaleToFill
        placeImage.clipsToBounds = true
        dismiss(animated: true, completion: nil)
    }
    
}
