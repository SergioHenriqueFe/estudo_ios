//
//  ViewController.swift
//  16-AppTableViewCurso
//
//  Created by Sergio henrique Ferreira on 06/07/23.
//

import UIKit

class ViewController: UIViewController {

    //MARK: 1 passo
    @IBOutlet weak var tableView: UITableView!
    
    //MARK: 7 passo chamar o func confitableView 
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configTableview()
    }
    //MARK: 8 Passo
    //MARK: 2 Passo -- Assinatura register a cursrtom..
    func configTableview(){
        // realizando a assintura de Delegate e dataSource, após isso é importante fazer a extension da viewController para declarar a UITableViewDelegate e UITableViewDataSource
        tableView.delegate = self // realizando a assintura
        tableView.dataSource = self
        tableView.register(CurstomTableViewCell.nib(), forCellReuseIdentifier: CurstomTableViewCell.identifier)
    }
    
}
    //MARK: 3 Passo -- protocols tableview
extension ViewController: UITableViewDelegate,UITableViewDataSource{
    //UITableViewDataSource é obrigátorio inserir os dois métodos numberOfRoewInserctiom e cellForRowAt
    // método numberOfRoewInsection -- numeros de linhas para cada section
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    // método cellForRowAt -- celula, é necassário informa uma celula de retorno
    //MARK: 6 passo
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: CurstomTableViewCell.identifier, for: indexPath) as? CurstomTableViewCell // as? (cash) = sig que o que estamos trabalhando é cusrstomTablaviewCell assim consegue acessar
        return cell ?? UITableViewCell()
    }
    
    //MARK: Passo 4
    // criação do group (UITableViewCell), criação de um arquivo no group (cocoa Clas) -- class UitableVireCell, e celecioanr o XIB para a criação (uso de celular acompotonetes apartados (CurstomtableViewCell) )
}
    

