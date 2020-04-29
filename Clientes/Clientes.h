//
//  Clientes.h
//  Clientes
//
//  Created by Fernando  Moreno Tovar on 28/04/20.
//  Copyright © 2020 Fernando  Moreno Tovar. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface Clientes : NSObject

@property (nonatomic, strong)UIImage * imagen;
@property(nonatomic,strong)NSString * nombre;
@property(nonatomic, strong)NSString * correo;
@property(nonatomic, strong)NSString * ciudad;
@property(nonatomic, strong)NSString * direccion;
@property(nonatomic, strong)NSString * telefono;


@end

NS_ASSUME_NONNULL_END
