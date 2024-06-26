//
//  PlaceInfoTableViewCell.swift
//  ConneCo
//
//  Created by jaegu park on 6/24/24.
//

import UIKit

class PlaceInfoTableViewCell: UITableViewCell {
    
    @IBOutlet weak var placeImage: UIImageView!
    @IBOutlet weak var placeName: UILabel!
    @IBOutlet weak var placeTitle: UILabel!
    @IBOutlet weak var placeDate: UILabel!
    
    var index: Int = 0
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

extension PlaceInfoViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if (indexPath.section == 0) {
            let something4 = UIStoryboard.init(name: "Mypage", bundle: nil)
            guard let rvc = something4.instantiateViewController(withIdentifier: "MyCouponDetailVC") as? MyCouponDetailViewController else {return}
            
            // 화면이동
            self.present(rvc, animated: true)
        } else {
            let something4 = UIStoryboard.init(name: "Mypage", bundle: nil)
            guard let rvc = something4.instantiateViewController(withIdentifier: "MyEventDetailVC") as? MyEventDetailViewController else {return}
            
            // 화면이동
            self.present(rvc, animated: true)
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return placeImages.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 81
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        .leastNormalMagnitude
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: PlaceInfoTableViewCell = tableView.dequeueReusableCell(withIdentifier: "PlaceInfo_TableViewCell", for: indexPath) as! PlaceInfoTableViewCell
        
        cell.placeImage.image = UIImage(named: placeImages[indexPath.section])
        cell.placeName.text = "\(placeNames[indexPath.section])"
        cell.placeTitle.text = "\(placeTitles[indexPath.section])"
        cell.placeDate.text = "\(placeDates[indexPath.section])"
        
        return cell
    }
}
