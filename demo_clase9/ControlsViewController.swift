//
//  ControlsViewController.swift
//  demo_clase9
//
//  Created by Francisco Ocampo Romero on 10/02/17.
//  Copyright © 2017 devf. All rights reserved.
//

import UIKit

class ControlsViewController: UIViewController {

  var numero : Double = 26.0
  var lista = ["ivan", "rich", "jacobo", "eduardo", "darwich"]
  
  var hobbies = [["cine", "fut"], ["gamer", "foto"], ["peliculas", "deporte", "dormir"], ["peliculas", "futbol"], ["programar", "basket"]]
  
  @IBOutlet weak var picker: UIPickerView!
  @IBOutlet weak var tableView: UITableView!
  
    override func viewDidLoad() {
        super.viewDidLoad()
      initDelegates()
      self.enableBackgroundColor(value: false)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
  
  private func initDelegates() {
    picker.dataSource = self
    picker.delegate = self
    tableView.dataSource = self
  }
  

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

//MARK: Picker events
extension ControlsViewController : UIPickerViewDelegate, UIPickerViewDataSource {
  
  func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
    return lista[row]
  }
  
  func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
    return lista.count
  }
  
  func numberOfComponents(in pickerView: UIPickerView) -> Int {
    return 1
  }
  
  func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
    tableView.reloadData()
  }
  
}

extension ControlsViewController : UITableViewDataSource {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    print(picker.selectedRow(inComponent: 0))
    return hobbies[picker.selectedRow(inComponent: 0)].count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
    cell?.textLabel?.text = hobbies[picker.selectedRow(inComponent: 0)][indexPath.row]
    return cell!
  }
}
