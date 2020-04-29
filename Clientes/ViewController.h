//
//  ViewController.h
//  Clientes
//
//  Created by Fernando  Moreno Tovar on 28/04/20.
//  Copyright © 2020 Fernando  Moreno Tovar. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIImageView *imagenPerfil;
@property (strong, nonatomic) IBOutlet UILabel *labelNombre;
@property (strong, nonatomic) IBOutlet UILabel *labelCorreo;
@property (strong, nonatomic) IBOutlet UILabel *labelCiudad;
@property (strong, nonatomic) IBOutlet UILabel *labelDireccion;
@property (strong, nonatomic) IBOutlet UILabel *labelTel;

@property(nonatomic, strong)NSMutableArray * listaClientes;
@property(nonatomic) int posicionCliente;

- (IBAction)previous:(UIButton *)sender;

- (IBAction)next:(UIButton *)sender;

@end

