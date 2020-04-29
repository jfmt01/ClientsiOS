//
//  ViewController.m
//  Clientes
//
//  Created by Fernando  Moreno Tovar on 28/04/20.
//  Copyright © 2020 Fernando  Moreno Tovar. All rights reserved.
//

#import "ViewController.h"
#import "Clientes.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    Clientes * cliente1 = [[Clientes alloc] init];
    
    cliente1.imagen = [UIImage imageNamed:@"stefan-stefancik"];
    cliente1.nombre = @"Stefan Stefancik";
    cliente1.correo = @"stefancik@gmail.com";
    cliente1.ciudad = @"Bogotá";
    cliente1.direccion = @"Calle 1a #14-35";
    cliente1.telefono = @"3215086970";
    
    
    Clientes * cliente2 = [[Clientes alloc] init];
    
    cliente2.imagen = [UIImage imageNamed:@"yucel-moran"];
    cliente2.nombre = @"Yucel Moran";
    cliente2.correo = @"yucelm@gmail.com";
    cliente2.ciudad = @"Medellín";
    cliente2.direccion = @"Calle 12b #4-72";
    cliente2.telefono = @"3215569874";
    
    Clientes * cliente3 = [[Clientes alloc] init];
    
    cliente3.imagen = [UIImage imageNamed:@"toby-christopher"];
    cliente3.nombre = @"Toby Christopher";
    cliente3.correo = @"tobychris@gmail.com";
    cliente3.ciudad = @"New York";
    cliente3.direccion = @"172 de Madison Avenue, Midtown";
    cliente3.telefono = @"+1 2128541754";

    self.listaClientes = [[NSMutableArray alloc]init];
    [self.listaClientes addObject: cliente1];
    [self.listaClientes addObject:cliente2];
    [self.listaClientes addObject:cliente3];
    
    self.posicionCliente = 0;
    
    [self actualizarCliente];
}

-(void)actualizarCliente{
    
    Clientes * nuevoCliente = self.listaClientes[self.posicionCliente];
    
    [UIView transitionWithView:self.view
            duration:0.5
            options:UIViewAnimationOptionTransitionCrossDissolve
            animations:^{
                [self.imagenPerfil setImage:nuevoCliente.imagen];
                [self.labelNombre setText:nuevoCliente.nombre];
                [self.labelCorreo setText:nuevoCliente.correo];
                [self.labelCiudad setText:nuevoCliente.ciudad];
                [self.labelDireccion setText:nuevoCliente.direccion];
                [self.labelTel setText:nuevoCliente.telefono];
            }
            completion:^(BOOL finished) {
                NSLog(@"Transición terminada");
            }
     ];
    

}

- (IBAction)previous:(UIButton *)sender {

    int numClientes = (int)[self.listaClientes count];
    if (self.posicionCliente == 0) {
        self.posicionCliente = numClientes --;
    }
    
    self.posicionCliente--;
    [self actualizarCliente];
}

- (IBAction)next:(UIButton *)sender {
    self.posicionCliente++;
    
    if (self.posicionCliente >= [self.listaClientes count]) {
        self.posicionCliente = 0;
    }
    [self actualizarCliente];
}
@end
