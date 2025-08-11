//
//  ViewController.swift
//  Exemplo TableView
//
//  Created by glima02 on 11/08/25.
//

import UIKit
                                        // Protocolo obrigatorio para manipular TableView
class ViewController: UIViewController, UITableViewDataSource {

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
        return 3
    }
    
    //metodo padrao para celula
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {                                     // nome dado ao table view
        let celula = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        celula.textLabel?.text = "Item número \(indexPath.row)"
        celula.imageView?.image = UIImage(named: "Santos")
        celula.detailTextLabel?.text = "Teste..."
        celula.accessoryType = .detailDisclosureButton
        return celula
    }

}

