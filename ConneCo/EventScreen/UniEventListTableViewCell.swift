//
//  UniEventListTableViewCell.swift
//  ConneCo
//
//  Created by jaegu park on 5/15/24.
//

import UIKit

class UniEventListTableViewCell: UITableViewCell {
    
    @IBOutlet weak var eventImage: UIImageView!
    @IBOutlet weak var eventUni: UILabel!
    @IBOutlet weak var eventName: UILabel!
    @IBOutlet weak var eventDate: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

extension UniViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return eventImages.count
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
        let cell: UniEventListTableViewCell = tableView.dequeueReusableCell(withIdentifier: "UniEventList_TableViewCell", for: indexPath) as! UniEventListTableViewCell
        
        cell.eventImage.image = UIImage(named: eventImages[indexPath.section])
        cell.eventUni.text = "\(eventUnis[indexPath.section])"
        cell.eventName.text = "\(eventNames[indexPath.section])"
        cell.eventDate.text = "\(eventDates[indexPath.section])"
        
        return cell
    }
}
