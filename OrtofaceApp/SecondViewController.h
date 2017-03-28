//
//  SecondViewController.h
//  OrtofaceApp
//
//  Created by andres ocampo on 16/10/12.
//  Copyright (c) 2012 andres ocampo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>
#import <MessageUI/MFMailComposeViewController.h>


@class KBScrollView;

@interface SecondViewController : UIViewController   <UITextFieldDelegate, MFMailComposeViewControllerDelegate>

{
    //Observaciones
    IBOutlet UITextView *Observaciones;
    
    
    //formulario 1
    UIImageView *backgroundImageView;
    UIImageView *overlayImageView;
    BOOL scaning;
   
    
    IBOutlet UITextField *Fecha_Adulto;
    IBOutlet UITextField *Nombre_Adulto;
    IBOutlet UITextField *Apellido_Adulto;
    IBOutlet UITextField *Direccion_Adulto;
    IBOutlet UITextField *Numero_Adulto;
    IBOutlet UITextField *Piso_Adulto;
    IBOutlet UITextField *Localidad_Adulto;
    IBOutlet UITextField *CodigoPostal_Adulto;
    IBOutlet UITextField *FechaNacimiento_Adulto;
    IBOutlet UITextField *Edad_Adulto;
    IBOutlet UITextField *TelefonoParticular_Adulto;
    IBOutlet UITextField *CorreoElectronico_Adulto;
    IBOutlet UITextField *Movil_Adulto;
    
    IBOutlet UITextField *QuienHaReferidoNuestraConsulta_Adulto;
    
    IBOutlet UITextField *ProblemaPrincipalDeDientes_Adulto;
    
    IBOutlet UITextField *PadeceEnfermedadNo_Adulto;
    IBOutlet UITextField *PadeceEnfermedadSi_Adulto;
    IBOutlet UITextField *PadeceEnfermedadCuales_Adulto;
    
    IBOutlet UITextField *AlergiaMedicamentosComidasNo_Adulto;
    IBOutlet UITextField *AlergiaMedicamentosComidasSi_Adulto;
    IBOutlet UITextField *AlergiaMedicamentosComidasCuales_Adulto;

    IBOutlet UITextField *MedicacionUtilizada_Adulto;
    
    IBOutlet UITextField *TratamientoOrtodoncicoNo_Adulto;
    IBOutlet UITextField *TratamientoOrtodoncicoSi_Adulto;
    IBOutlet UITextField *TratamientoOrtodoncicoEdad_Adulto;
    
    IBOutlet UITextField *OperadoDeAmigdalasVegetacionesNo_Adulto;
    IBOutlet UITextField *OperadoDeAmigdalasVegetacionesSi_Adulto;
    IBOutlet UITextField *OperadoDeAmigdalasVegetacionesEdad_Adulto;

    IBOutlet UITextField *HipertensoNo_Adulto;
    IBOutlet UITextField *HipertensoSi_Adulto;
    
    IBOutlet UITextField *EmbarazadaNo_Adulto;
    IBOutlet UITextField *EmbarazadaSi_Adulto;
    
    IBOutlet UITextField *FumadorNo_Adulto;
    IBOutlet UITextField *FumadorSi_Adulto;
    
    IBOutlet UITextField *AlergicoNo_Adulto;
    IBOutlet UITextField *AlergicoSi_Adulto;
    
    IBOutlet UITextField *ProblemasCardiacosNo_Adulto;
    IBOutlet UITextField *ProblemasCardiacosSi_Adulto;
    IBOutlet UITextField *ProblemasCardiacosCuales_Adulto;
    
    IBOutlet UITextField *HepatitisA_Adulto;
    IBOutlet UITextField *HepatitisB_Adulto;
    IBOutlet UITextField *HepatitisC_Adulto;
    
    IBOutlet UITextField *AnemiaX_Adulto;

    IBOutlet UITextField *DepresionX_Adulto;

    IBOutlet UITextField *EpilepsiaX_Adulto;

    IBOutlet UITextField *ProblemasdeRinonesX_Adulto;

    IBOutlet UITextField *UlcerasX_Adulto;

    IBOutlet UITextField *DiabetesX_Adulto;

    IBOutlet UITextField *HIVX_Adulto;

    IBOutlet UITextField *ProblemasTiroidesX_Adulto;

    IBOutlet UITextField *ProblemasPulmonaresX_Adulto;

    IBOutlet UITextField *CanceresTumoresX_Adulto;

    IBOutlet UITextField *MareosX_Adulto;

    IBOutlet UITextField *DesmayosX_Adulto;

    IBOutlet UITextField *SangraEnciasX_Adulto;

    
 
}



@property (nonatomic, retain) UIImage *screenshotImage;
@property (nonatomic, retain) IBOutlet UIImageView *backgroundImageView;
@property (nonatomic, retain) IBOutlet UIImageView *overlayImageView;
@property (nonatomic, retain) IBOutlet UIView *screenPictureView;
@property (nonatomic, retain) IBOutlet UILabel *screenPictureLabel;
@property (nonatomic, retain) IBOutlet UIImageView * screenPictureImageView;

@property (nonatomic, retain) IBOutlet KBScrollView *scrollView;



@property (nonatomic, retain) IBOutlet UITextField *Fecha_Adulto;
@property (nonatomic, retain) IBOutlet UITextField *Nombre_Adulto;
@property (nonatomic, retain) IBOutlet UITextField *Apellido_Adulto;
@property (nonatomic, retain) IBOutlet UITextField *Direccion_Adulto;
@property (nonatomic, retain) IBOutlet UITextField *Numero_Adulto;
@property (nonatomic, retain) IBOutlet UITextField *Piso_Adulto;
@property (nonatomic, retain) IBOutlet UITextField *Localidad_Adulto;
@property (nonatomic, retain) IBOutlet UITextField *CodigoPostal_Adulto;
@property (nonatomic, retain) IBOutlet UITextField *FechaNacimiento_Adulto;
@property (nonatomic, retain) IBOutlet UITextField *Edad_Adulto;
@property (nonatomic, retain) IBOutlet UITextField *TelefonoParticular_Adulto;
@property (nonatomic, retain) IBOutlet UITextField *CorreoElectronico_Adulto;
@property (nonatomic, retain) IBOutlet UITextField *Movil_Adulto;

@property (nonatomic, retain) IBOutlet UITextField *QuienHaReferidoNuestraConsulta_Adulto;

@property (nonatomic, retain) IBOutlet UITextField *ProblemaPrincipalDeDientes_Adulto;

@property (nonatomic, retain) IBOutlet UITextField *PadeceEnfermedadNo_Adulto;
@property (nonatomic, retain) IBOutlet UITextField *PadeceEnfermedadSi_Adulto;
@property (nonatomic, retain) IBOutlet UITextField *PadeceEnfermedadCuales_Adulto;

@property (nonatomic, retain) IBOutlet UITextField *AlergiaMedicamentosComidasNo_Adulto;
@property (nonatomic, retain) IBOutlet UITextField *AlergiaMedicamentosComidasSi_Adulto;
@property (nonatomic, retain) IBOutlet UITextField *AlergiaMedicamentosComidasCuales_Adulto;

@property (nonatomic, retain) IBOutlet UITextField *MedicacionUtilizada_Adulto;

@property (nonatomic, retain) IBOutlet UITextField *TratamientoOrtodoncicoNo_Adulto;
@property (nonatomic, retain) IBOutlet UITextField *TratamientoOrtodoncicoSi_Adulto;
@property (nonatomic, retain) IBOutlet UITextField *TratamientoOrtodoncicoEdad_Adulto;

@property (nonatomic, retain) IBOutlet UITextField *OperadoDeAmigdalasVegetacionesNo_Adulto;
@property (nonatomic, retain) IBOutlet UITextField *OperadoDeAmigdalasVegetacionesSi_Adulto;
@property (nonatomic, retain) IBOutlet UITextField *OperadoDeAmigdalasVegetacionesEdad_Adulto;

@property (nonatomic, retain) IBOutlet UITextField *HipertensoNo_Adulto;
@property (nonatomic, retain) IBOutlet UITextField *HipertensoSi_Adulto;

@property (nonatomic, retain) IBOutlet UITextField *EmbarazadaNo_Adulto;
@property (nonatomic, retain) IBOutlet UITextField *EmbarazadaSi_Adulto;

@property (nonatomic, retain) IBOutlet UITextField *FumadorNo_Adulto;
@property (nonatomic, retain) IBOutlet UITextField *FumadorSi_Adulto;

@property (nonatomic, retain) IBOutlet UITextField *AlergicoNo_Adulto;
@property (nonatomic, retain) IBOutlet UITextField *AlergicoSi_Adulto;

@property (nonatomic, retain) IBOutlet UITextField *ProblemasCardiacosNo_Adulto;
@property (nonatomic, retain) IBOutlet UITextField *ProblemasCardiacosSi_Adulto;
@property (nonatomic, retain) IBOutlet UITextField *ProblemasCardiacosCuales_Adulto;

@property (nonatomic, retain) IBOutlet UITextField *HepatitisA_Adulto;
@property (nonatomic, retain) IBOutlet UITextField *HepatitisB_Adulto;
@property (nonatomic, retain) IBOutlet UITextField *HepatitisC_Adulto;

@property (nonatomic, retain) IBOutlet UITextField *AnemiaX_Adulto;

@property (nonatomic, retain) IBOutlet UITextField *DepresionX_Adulto;

@property (nonatomic, retain) IBOutlet UITextField *EpilepsiaX_Adulto;

@property (nonatomic, retain) IBOutlet UITextField *ProblemasdeRinonesX_Adulto;

@property (nonatomic, retain) IBOutlet UITextField *UlcerasX_Adulto;

@property (nonatomic, retain) IBOutlet UITextField *DiabetesX_Adulto;

@property (nonatomic, retain) IBOutlet UITextField *HIVX_Adulto;

@property (nonatomic, retain) IBOutlet UITextField *ProblemasTiroidesX_Adulto;

@property (nonatomic, retain) IBOutlet UITextField *ProblemasPulmonaresX_Adulto;

@property (nonatomic, retain) IBOutlet UITextField *CanceresTumoresX_Adulto;

@property (nonatomic, retain) IBOutlet UITextField *MareosX_Adulto;

@property (nonatomic, retain) IBOutlet UITextField *DesmayosX_Adulto;

@property (nonatomic, retain) IBOutlet UITextField *SangraEnciasX_Adulto;



// acciones de salvado y recarga de datos del formulario

-(IBAction)enviar:(id)sender;
-(IBAction)cargarInformacion:(id)sender;


-(IBAction)getUIKitScreeshot;




// formulario 1


-(IBAction)dismisseFecha_Adulto:(id)sender;
-(IBAction)dismisseNombre_Adulto:(id)sender;
-(IBAction)dismisseApellido_Adulto:(id)sender;
-(IBAction)dismisseDireccion_Adulto:(id)sender;
-(IBAction)dismisseNumero_Adulto:(id)sender;
-(IBAction)dismissePiso_Adulto:(id)sender;
-(IBAction)dismisseLocalidad_Adulto:(id)sender;
-(IBAction)dismisseCodigoPostal_Adulto:(id)sender;
-(IBAction)dismisseFechaNacimiento_Adulto:(id)sender;
-(IBAction)dismisseEdad_Adulto:(id)sender;
-(IBAction)dismisseTelefonoParticular_Adulto:(id)sender;
-(IBAction)dismisseCorreoElectronico_Adulto:(id)sender;
-(IBAction)dismisseMovil_Adulto:(id)sender;

-(IBAction)dismisseQuienHaReferidoNuestraConsulta_Adulto:(id)sender;

-(IBAction)dismisseProblemaPrincipalDeDientes_Adulto:(id)sender;

-(IBAction)dismissePadeceEnfermedadNo_Adulto:(id)sender;
-(IBAction)dismissePadeceEnfermedadSi_Adulto:(id)sender;
-(IBAction)dismissePadeceEnfermedadCuales_Adulto:(id)sender;

-(IBAction)dismisseAlergiaMedicamentosComidasNo_Adulto:(id)sender;
-(IBAction)dismisseAlergiaMedicamentosComidasSi_Adulto:(id)sender;
-(IBAction)dismisseAlergiaMedicamentosComidasCuales_Adulto:(id)sender;

-(IBAction)dismisseMedicacionUtilizada_Adulto:(id)sender;

-(IBAction)dismisseTratamientoOrtodoncicoNo_Adulto:(id)sender;
-(IBAction)dismisseTratamientoOrtodoncicoSi_Adulto:(id)sender;
-(IBAction)dismisseTratamientoOrtodoncicoCuales_Adulto:(id)sender;

-(IBAction)dismisseOperadoDeAmigdalasVegetacionesNo_Adulto:(id)sender;
-(IBAction)dismisseOperadoDeAmigdalasVegetacionesSi_Adulto:(id)sender;
-(IBAction)dismisseOperadoDeAmigdalasVegetacionesCuales_Adulto:(id)sender;

-(IBAction)dismisseHipertensoNo_Adulto:(id)sender;
-(IBAction)dismisseHipertensoSi_Adulto:(id)sender;

-(IBAction)dismisseEmbarazadaNo_Adulto:(id)sender;
-(IBAction)dismisseEmbarazadaSi_Adulto:(id)sender;

-(IBAction)dismisseFumadorNo_Adulto:(id)sender;
-(IBAction)dismisseFumadorSi_Adulto:(id)sender;

-(IBAction)dismisseAlergicoNo_Adulto:(id)sender;
-(IBAction)dismisseAlergicoSi_Adulto:(id)sender;

-(IBAction)dismisseProblemasCardiacosNo_Adulto:(id)sender;
-(IBAction)dismisseProblemasCardiacosSi_Adulto:(id)sender;
-(IBAction)dismisseProblemasCardiacosCuales_Adulto:(id)sender;

-(IBAction)dismisseHepatitisA_Adulto:(id)sender;
-(IBAction)dismisseHepatitisB_Adulto:(id)sender;
-(IBAction)dismisseHepatitisC_Adulto:(id)sender;

-(IBAction)dismisseAnemiaX_Adulto:(id)sender;

-(IBAction)dismisseDepresionX_Adulto:(id)sender;

-(IBAction)dismisseEpilepsiaX_Adulto:(id)sender;

-(IBAction)dismisseProblemasdeRinonesX_Adulto:(id)sender;

-(IBAction)dismisseUlcerasX_Adulto:(id)sender;

-(IBAction)dismisseDiabetesX_Adulto:(id)sender;

-(IBAction)dismisseHIVX_Adulto:(id)sender;

-(IBAction)dismisseProblemasTiroidesX_Adulto:(id)sender;

-(IBAction)dismisseProblemasPulmonaresX_Adulto:(id)sender;

-(IBAction)dismisseCanceresTumoresX_Adulto:(id)sender;

-(IBAction)dismisseMareosX_Adulto:(id)sender;

-(IBAction)dismisseDesmayosX_Adulto:(id)sender;

-(IBAction)dismisseSangraEnciasX_Adulto:(id)sender;

-(IBAction)dismisseObservaciones:(id)sender;

//propiedades que me permite obtener los datos de nombre y apellido y enviarlo a traves de "segue" a la vista de firma de terminos y condiciones

@property (strong, nonatomic) NSString *messageNombre_Adulto;
@property (strong, nonatomic) NSString *messageApellido_Adulto;

@end













