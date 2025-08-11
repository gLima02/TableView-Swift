//
//  ViewController.swift
//  Exemplo TableView
//
//  Created by glima02 on 11/08/25.
//

import UIKit
                                        // Protocolo obrigatorio para manipular TableView
class ViewController: UIViewController, UITableViewDataSource {

    var animal = ["Elefante", "Rinoceronte", "Girafa", "Leao", "Urso"]
    var img = ["ele", "rino", "girafa", "leao", "urso"]
    var local = ["Asia/Africa", "Africa", "Africa", "America/Africa", "Europa/Asia/..."]
    
    @IBOutlet weak var minhaTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        minhaTable.dataSource = self //diz que a table usara o proprio protocolo
    }

    //metodo padrao para numero de sessoes
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    //metodo padrao para linhas
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animal.count //length
    }
    
    //metodo padrao para celula
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {                                     // nome dado ao table view
        let celula = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
       // celula.textLabel?.text = "Item número \(indexPath.row)"
        celula.textLabel?.text = animal[indexPath.row]
      // celula.imageView?.image = UIImage(named: "Santos")
        celula.imageView?.image = UIImage(named: img[indexPath.row])
     //  celula.detailTextLabel?.text = "Teste..."
        celula.detailTextLabel?.text = local[indexPath.row]
        celula.accessoryType = .detailDisclosureButton
        return celula
    }

}

