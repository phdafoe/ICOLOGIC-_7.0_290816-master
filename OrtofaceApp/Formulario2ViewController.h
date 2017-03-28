//
//  Formulario2ViewController.h
//  OrtofaceApp
//
//  Created by andres ocampo on 17/10/12.
//  Copyright (c) 2012 andres ocampo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>
#import <MessageUI/MFMailComposeViewController.h>


@class KBF2ScrollView;

@interface Formulario2ViewController : UIViewController  <UITextFieldDelegate, MFMailComposeViewControllerDelegate>

{
    
    //Observaciones
    IBOutlet UITextView *Observaciones_kid;
   
    //formulario 2
    UIImageView *backgroundImageView;
    UIImageView *overlayImageView;
    BOOL scaning;
    
    IBOutlet UITextField *Fecha_kid;
    IBOutlet UITextField *Nombre_Kid;
    IBOutlet UITextField *Apellido_Kid;
    IBOutlet UITextField *Direccion_kid;
    IBOutlet UITextField *Numero_kid;
    IBOutlet UITextField *Piso_kid;
    IBOutlet UITextField *FechaNacimiento_kid;
    IBOutlet UITextField *Edad_kid;
    IBOutlet UITextField *Localidad_kid;
    IBOutlet UITextField *CodigoPostal_Kid;
    
    IBOutlet UITextField *NombrePadre_kid;
    IBOutlet UITextField *NombreMadre_kid;
    IBOutlet UITextField *ProfesionPadre_kid;
    IBOutlet UITextField *ProfesionMadre_kid;
    IBOutlet UITextField *CorreoElectronicoPadre_Kid;
    IBOutlet UITextField *CorreoElectronicoMadre_kid;
    IBOutlet UITextField *MovilPadre_kid;
    IBOutlet UITextField *MovilMadre_kid;
    
    IBOutlet UITextField *CuantosHermanosTienePaciente_kid;
    IBOutlet UITextField *OtroMiembroEnConsulta_kid;
    IBOutlet UITextField *QuienHaReferidoConsulta_kid;
    IBOutlet UITextField *ProblemPrincipalDientes_kid;
    
    IBOutlet UITextField *PadeceAlgunTipoDeEnfermedadNo_kid;
    IBOutlet UITextField *PadeceAlgunTipoDeEnfermedadSi_kid;
    IBOutlet UITextField *PadeceAlgunTipoDeEnfermedadCuales_kid;
    
    IBOutlet UITextField *AlergiaMedicamentosNo_kid;
    IBOutlet UITextField *AlergiaMedicamentosSi_kid;
    IBOutlet UITextField *AlergiaMedicamentosCuales_kid;
    
    IBOutlet UITextField *TraumatismoCabezaCaraNo_kid;
    IBOutlet UITextField *TraumatismoCabezaCaraSi_kid;
    IBOutlet UITextField *TraumatismoCabezaCaraCuales_kid;
    
    IBOutlet UITextField *MedicacionUtilizada_kid;
    
    IBOutlet UITextField *RoncaCuandoDuermeNo_Kid;
    IBOutlet UITextField *RoncaCuandoDuermeSi_Kid;
    
    IBOutlet UITextField *RespiraPorBocaSiempre_kid;
    IBOutlet UITextField *RespiraPorBocaAlgunasVeces_kid;
    IBOutlet UITextField *RespiraPorBocaNunca_kid;
    
    IBOutlet UITextField *TieneTendenciaGripaNo_kid;
    IBOutlet UITextField *TieneTendenciaGripaSi_kid;
    
    IBOutlet UITextField *TratamientoOrtodoncicoNo_kid;
    IBOutlet UITextField *TratamientoOrtodoncicoSi_kid;
    IBOutlet UITextField *TratamientoOrtodoncicoEdad_kid;
    
    IBOutlet UITextField *OperadoDeAmigdalasVegetacionesNo_kid;
    IBOutlet UITextField *OperadoDeAmigdalasVegetacionesSi_kid;
    IBOutlet UITextField *OperadoDeAmigdalasVegetacionesEdad_kid;
    
    IBOutlet UITextField *UsoChupeteNo_kid;
    IBOutlet UITextField *UsoChupeteSi_kid;
    IBOutlet UITextField *UsoChupeteEdad_kid;
    
    IBOutlet UITextField *ChupoDedoNo_kid;
    IBOutlet UITextField *ChupoDedoSi_kid;
    IBOutlet UITextField *ChupoDedoEdad_kid;
    
    IBOutlet UITextField *SeMuerdeUnasNo_kid;
    IBOutlet UITextField *SeMuerdeUnasSi_kid;
    
    IBOutlet UITextField *SeMuerdeLabiosNo_kid;
    IBOutlet UITextField *SeMuerdeLabiosSi_kid;
    
    IBOutlet UITextField *CuantasVecesCepillaDientes1_kid;
    IBOutlet UITextField *CuantasVecesCepillaDientes2_kid;
    IBOutlet UITextField *CuantasVecesCepillaDientes3_kid;
    IBOutlet UITextField *CuantasVecesCepillaDientes4_kid;
    
    IBOutlet UITextField *ImportariaUsarAparatoOrtodoncicoNo_kid;
    IBOutlet UITextField *ImportariaUsarAparatoOrtodoncicoSi_kid;

}

@property (nonatomic, retain) UIImage *screenshotImage;
@property (nonatomic, retain) IBOutlet UIImageView *backgroundImageView;
@property (nonatomic, retain) IBOutlet UIImageView *overlayImageView;
@property (nonatomic, retain) IBOutlet UIView *screenPictureView;
@property (nonatomic, retain) IBOutlet UILabel *screenPictureLabel;
@property (nonatomic, retain) IBOutlet UIImageView * screenPictureImageView;

@property (nonatomic, retain) IBOutlet KBF2ScrollView *scrollView;



@property (nonatomic, retain) IBOutlet UITextField *Fecha_kid;
@property (nonatomic, retain) IBOutlet UITextField *Nombre_Kid;
@property (nonatomic, retain) IBOutlet UITextField *Apellido_Kid;
@property (nonatomic, retain) IBOutlet UITextField *Direccion_kid;
@property (nonatomic, retain) IBOutlet UITextField *Numero_kid;
@property (nonatomic, retain) IBOutlet UITextField *Piso_kid;
@property (nonatomic, retain) IBOutlet UITextField *FechaNacimiento_kid;
@property (nonatomic, retain) IBOutlet UITextField *Edad_kid;
@property (nonatomic, retain) IBOutlet UITextField *Localidad_kid;
@property (nonatomic, retain) IBOutlet UITextField *CodigoPostal_Kid;

@property (nonatomic, retain) IBOutlet UITextField *NombrePadre_kid;
@property (nonatomic, retain) IBOutlet UITextField *NombreMadre_kid;
@property (nonatomic, retain) IBOutlet UITextField *ProfesionPadre_kid;
@property (nonatomic, retain) IBOutlet UITextField *ProfesionMadre_kid;
@property (nonatomic, retain) IBOutlet UITextField *CorreoElectronicoPadre_Kid;
@property (nonatomic, retain) IBOutlet UITextField *CorreoElectronicoMadre_kid;
@property (nonatomic, retain) IBOutlet UITextField *MovilPadre_kid;
@property (nonatomic, retain) IBOutlet UITextField *MovilMadre_kid;

@property (nonatomic, retain) IBOutlet UITextField *CuantosHermanosTienePaciente_kid;
@property (nonatomic, retain) IBOutlet UITextField *OtroMiembroEnConsulta_kid;
@property (nonatomic, retain) IBOutlet UITextField *QuienHaReferidoConsulta_kid;
@property (nonatomic, retain) IBOutlet UITextField *ProblemPrincipalDientes_kid;

@property (nonatomic, retain) IBOutlet UITextField *PadeceAlgunTipoDeEnfermedadNo_kid;
@property (nonatomic, retain) IBOutlet UITextField *PadeceAlgunTipoDeEnfermedadSi_kid;
@property (nonatomic, retain) IBOutlet UITextField *PadeceAlgunTipoDeEnfermedadCuales_kid;

@property (nonatomic, retain) IBOutlet UITextField *AlergiaMedicamentosNo_kid;
@property (nonatomic, retain) IBOutlet UITextField *AlergiaMedicamentosSi_kid;
@property (nonatomic, retain) IBOutlet UITextField *AlergiaMedicamentosCuales_kid;

@property (nonatomic, retain) IBOutlet UITextField *TraumatismoCabezaCaraNo_kid;
@property (nonatomic, retain) IBOutlet UITextField *TraumatismoCabezaCaraSi_kid;
@property (nonatomic, retain) IBOutlet UITextField *TraumatismoCabezaCaraCuales_kid;

@property (nonatomic, retain) IBOutlet UITextField *MedicacionUtilizada_kid;

@property (nonatomic, retain) IBOutlet UITextField *RoncaCuandoDuermeNo_Kid;
@property (nonatomic, retain) IBOutlet UITextField *RoncaCuandoDuermeSi_Kid;

@property (nonatomic, retain) IBOutlet UITextField *RespiraPorBocaSiempre_kid;
@property (nonatomic, retain) IBOutlet UITextField *RespiraPorBocaAlgunasVeces_kid;
@property (nonatomic, retain) IBOutlet UITextField *RespiraPorBocaNunca_kid;

@property (nonatomic, retain) IBOutlet UITextField *TieneTendenciaGripaNo_kid;
@property (nonatomic, retain) IBOutlet UITextField *TieneTendenciaGripaSi_kid;

@property (nonatomic, retain) IBOutlet UITextField *TratamientoOrtodoncicoNo_kid;
@property (nonatomic, retain) IBOutlet UITextField *TratamientoOrtodoncicoSi_kid;
@property (nonatomic, retain) IBOutlet UITextField *TratamientoOrtodoncicoEdad_kid;

@property (nonatomic, retain) IBOutlet UITextField *OperadoDeAmigdalasVegetacionesNo_kid;
@property (nonatomic, retain) IBOutlet UITextField *OperadoDeAmigdalasVegetacionesSi_kid;
@property (nonatomic, retain) IBOutlet UITextField *OperadoDeAmigdalasVegetacionesEdad_kid;

@property (nonatomic, retain) IBOutlet UITextField *UsoChupeteNo_kid;
@property (nonatomic, retain) IBOutlet UITextField *UsoChupeteSi_kid;
@property (nonatomic, retain) IBOutlet UITextField *UsoChupeteEdad_kid;

@property (nonatomic, retain) IBOutlet UITextField *ChupoDedoNo_kid;
@property (nonatomic, retain) IBOutlet UITextField *ChupoDedoSi_kid;
@property (nonatomic, retain) IBOutlet UITextField *ChupoDedoEdad_kid;

@property (nonatomic, retain) IBOutlet UITextField *SeMuerdeUnasNo_kid;
@property (nonatomic, retain) IBOutlet UITextField *SeMuerdeUnasSi_kid;

@property (nonatomic, retain) IBOutlet UITextField *SeMuerdeLabiosNo_kid;
@property (nonatomic, retain) IBOutlet UITextField *SeMuerdeLabiosSi_kid;

@property (nonatomic, retain) IBOutlet UITextField *CuantasVecesCepillaDientes1_kid;
@property (nonatomic, retain) IBOutlet UITextField *CuantasVecesCepillaDientes2_kid;
@property (nonatomic, retain) IBOutlet UITextField *CuantasVecesCepillaDientes3_kid;
@property (nonatomic, retain) IBOutlet UITextField *CuantasVecesCepillaDientes4_kid;

@property (nonatomic, retain) IBOutlet UITextField *ImportariaUsarAparatoOrtodoncicoNo_kid;
@property (nonatomic, retain) IBOutlet UITextField *ImportariaUsarAparatoOrtodoncicoSi_kid;

// acciones de salvado y recarga de datos del formulario

-(IBAction)enviar:(id)sender;
-(IBAction)cargarInformacion:(id)sender;

//formulario 2

-(IBAction)getUIKitScreeshot;

-(IBAction)dismisseFecha_kid:(id)sender;
-(IBAction)dismisseNombre_Kid:(id)sender;
-(IBAction)dismisseApellido_Kid:(id)sender;
-(IBAction)dismisseDireccion_kid:(id)sender;
-(IBAction)dismisseNumero_kid:(id)sender;
-(IBAction)dismissePiso_kid:(id)sender;
-(IBAction)dismisseFechaNacimiento_kid:(id)sender;
-(IBAction)dismisseEdad_kid:(id)sender;
-(IBAction)dismisseLocalidad_kid:(id)sender;
-(IBAction)dismisseCodigoPostal_Kid:(id)sender;



-(IBAction)dismisseNombrePadre_kid:(id)sender;
-(IBAction)dismisseNombreMadre_kid:(id)sender;
-(IBAction)dismisseProfesionPadre_kid:(id)sender;
-(IBAction)dismisseProfesionMadre_kid:(id)sender;
-(IBAction)dismisseCorreoElectronicoPadre_Kid:(id)sender;
-(IBAction)dismisseCorreoElectronicoMadre_kid:(id)sender;
-(IBAction)dismisseMovilPadre_kid:(id)sender;
-(IBAction)dismisseMovilMadre_kid:(id)sender;

-(IBAction)dismisseCuantosHermanosTienePaciente_kid:(id)sender;
-(IBAction)dismisseOtroMiembroEnConsulta_kid:(id)sender;
-(IBAction)dismisseQuienHaReferidoConsulta_kid:(id)sender;
-(IBAction)dismisseProblemPrincipalDientes_kid:(id)sender;

-(IBAction)dismissePadeceAlgunTipoDeEnfermedadNo_kid:(id)sender;
-(IBAction)dismissePadeceAlgunTipoDeEnfermedadSi_kid:(id)sender;
-(IBAction)dismissePadeceAlgunTipoDeEnfermedadCuales_kid:(id)sender;

-(IBAction)dismisseAlergiaMedicamentosNo_kid:(id)sender;
-(IBAction)dismisseAlergiaMedicamentosSi_kid:(id)sender;
-(IBAction)dismisseAlergiaMedicamentosCuales_kid:(id)sender;

-(IBAction)dismisseTraumatismoCabezaCaraNo_kid:(id)sender;
-(IBAction)dismisseTraumatismoCabezaCaraSi_kid:(id)sender;
-(IBAction)dismisseTraumatismoCabezaCaraCuales_kid:(id)sender;

-(IBAction)dismisseMedicacionUtilizada_kid:(id)sender;

-(IBAction)dismisseRoncaCuandoDuermeNo_Kid:(id)sender;
-(IBAction)dismisseRoncaCuandoDuermeSi_Kid:(id)sender;

-(IBAction)dismisseRespiraPorBocaSiempre_kid:(id)sender;
-(IBAction)dismisseRespiraPorBocaAlgunasVeces_kid:(id)sender;
-(IBAction)dismisseRespiraPorBocaNunca_kid:(id)sender;

-(IBAction)dismisseTieneTendenciaGripaNo_kid:(id)sender;
-(IBAction)dismisseTieneTendenciaGripaSi_kid:(id)sender;

-(IBAction)dismisseTratamientoOrtodoncicoNo_kid:(id)sender;
-(IBAction)dismisseTratamientoOrtodoncicoSi_kid:(id)sender;
-(IBAction)dismisseTratamientoOrtodoncicoCuales_kid:(id)sender;

-(IBAction)dismisseOperadoDeAmigdalasVegetacionesNo_kid:(id)sender;
-(IBAction)dismisseOperadoDeAmigdalasVegetacionesSi_kid:(id)sender;
-(IBAction)dismisseOperadoDeAmigdalasVegetacionesCuales_kid:(id)sender;

-(IBAction)dismisseUsoChupeteNo_kid:(id)sender;
-(IBAction)dismisseUsoChupeteSi_kid:(id)sender;
-(IBAction)dismisseUsoChupeteEdad_kid:(id)sender;

-(IBAction)dismisseChupoDedoNo_kid:(id)sender;
-(IBAction)dismisseChupoDedoSi_kid:(id)sender;
-(IBAction)dismisseChupoDedoEdad_kid:(id)sender;

-(IBAction)dismisseSeMuerdeUnasNo_kid:(id)sender;
-(IBAction)dismisseSeMuerdeUnasSi_kid:(id)sender;

-(IBAction)dismisseSeMuerdeLabiosNo_kid:(id)sender;
-(IBAction)dismisseSeMuerdeLabiosSi_kid:(id)sender;

-(IBAction)dismisseCuantasVecesCepillaDientes1_kid:(id)sender;
-(IBAction)dismisseCuantasVecesCepillaDientes2_kid:(id)sender;
-(IBAction)dismisseCuantasVecesCepillaDientes3_kid:(id)sender;
-(IBAction)dismisseCuantasVecesCepillaDientes4_kid:(id)sender;

-(IBAction)dismisseImportariaUsarAparatoOrtodoncicoNo_kid:(id)sender;
-(IBAction)dismisseImportariaUsarAparatoOrtodoncicoSi_kid:(id)sender;

-(IBAction)dismisseObservaciones_Kid:(id)sender;

//propiedades que me permite obtener los datos de nombre y apellido y enviarlo a traves de "segue" a la vista de firma de terminos y condiciones


@property (strong, nonatomic) NSString *messageNombre_kid;
@property (strong, nonatomic) NSString *messageApellido_Kid;

- (void) displayScreenshotImage;
- (UIImage *)uiKitScreenshot;

@end
