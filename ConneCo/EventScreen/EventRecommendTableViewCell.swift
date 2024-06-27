//
//  EventRecommendTableViewCell.swift
//  ConneCo
//
//  Created by jaegu park on 5/15/24.
//

import UIKit

class EventRecommendTableViewCell: UITableViewCell {
    
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
    
    override func prepareForReuse() {
        super.prepareForReuse()
    }
}

extension EventRecommendViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "EventDetailVC") as? EventDetailViewController else { return }
        self.navigationController?.pushViewController(nextVC, animated: true)
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
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
        let cell: EventRecommendTableViewCell = tableView.dequeueReusableCell(withIdentifier: "EventRecommend_TableViewCell", for: indexPath) as! EventRecommendTableViewCell
        
        cell.selectionStyle = .none
        
        cell.eventImage.image = UIImage(named: eventImages[indexPath.section])
        cell.eventUni.text = "\(eventUnis[indexPath.section])"
        cell.eventName.text = "\(eventNames[indexPath.section])"
        cell.eventDate.text = "\(eventDates[indexPath.section])"
        
        return cell
    }
}
