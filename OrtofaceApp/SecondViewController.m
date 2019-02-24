//
//  SecondViewController.m
//  OrtofaceApp
//
//  Created by andres ocampo on 16/10/12.
//  Copyright (c) 2012 andres ocampo. All rights reserved.
//

#import "SecondViewController.h"
#import "KBScrollView.h"
#import <QuartzCore/QuartzCore.h>
#import <AVFoundation/AVFoundation.h>
#import <CoreGraphics/CoreGraphics.h>
#import <ImageIO/ImageIO.h>
#import <AssetsLibrary/AssetsLibrary.h>
#import "FirmaDigtalViewController.h"

@interface SecondViewController ()

- (void) displayScreenshotImage;
- (UIImage *)uiKitScreenshot;


@end

@implementation SecondViewController

@synthesize infoTratamientoPorEmail, infoTratamientoPorWathsApp, infoTratamientoPorCorreoPostal, Fecha_Adulto, Nombre_Adulto, Apellido_Adulto, Direccion_Adulto, Numero_Adulto, Piso_Adulto, Localidad_Adulto, CodigoPostal_Adulto, FechaNacimiento_Adulto, Edad_Adulto, TelefonoParticular_Adulto, CorreoElectronico_Adulto, Movil_Adulto, QuienHaReferidoNuestraConsulta_Adulto, ProblemaPrincipalDeDientes_Adulto, PadeceEnfermedadNo_Adulto, PadeceEnfermedadSi_Adulto, PadeceEnfermedadCuales_Adulto, AlergiaMedicamentosComidasNo_Adulto, AlergiaMedicamentosComidasSi_Adulto, AlergiaMedicamentosComidasCuales_Adulto, MedicacionUtilizada_Adulto, TratamientoOrtodoncicoNo_Adulto, TratamientoOrtodoncicoSi_Adulto, TratamientoOrtodoncicoEdad_Adulto, OperadoDeAmigdalasVegetacionesNo_Adulto, OperadoDeAmigdalasVegetacionesSi_Adulto, OperadoDeAmigdalasVegetacionesEdad_Adulto, HipertensoNo_Adulto, HipertensoSi_Adulto, EmbarazadaNo_Adulto, EmbarazadaSi_Adulto, FumadorNo_Adulto, FumadorSi_Adulto, AlergicoNo_Adulto, AlergicoSi_Adulto, ProblemasCardiacosNo_Adulto, ProblemasCardiacosSi_Adulto, ProblemasCardiacosCuales_Adulto, HepatitisA_Adulto, HepatitisB_Adulto, HepatitisC_Adulto, AnemiaX_Adulto, DepresionX_Adulto, EpilepsiaX_Adulto, ProblemasdeRinonesX_Adulto, UlcerasX_Adulto, DiabetesX_Adulto, HIVX_Adulto, ProblemasTiroidesX_Adulto, ProblemasPulmonaresX_Adulto, CanceresTumoresX_Adulto, MareosX_Adulto, DesmayosX_Adulto, SangraEnciasX_Adulto, scrollView;

@synthesize overlayImageView, backgroundImageView, screenshotImage, screenPictureView, screenPictureLabel, screenPictureImageView;

@synthesize messageNombre_Adulto, messageApellido_Adulto;


#pragma mark - metodo segue

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"First to second"])
    {
        self.messageNombre_Adulto = Nombre_Adulto.text;
        self.messageApellido_Adulto = Apellido_Adulto.text;
        FirmaDigtalViewController *targetVC = [segue destinationViewController];
        targetVC.messageNombre_Adulto = self.messageNombre_Adulto;
        targetVC.messageApellido_Adulto = self.messageApellido_Adulto;
    }
}

#pragma mark - metodo enviar info

-(IBAction)enviar:(id)sender

{
    
    NSString *enviaStringInfoTratamientoPorEmail = infoTratamientoPorEmail.text;
    NSUserDefaults *defaultsInfoTratamientoPorEmail = [NSUserDefaults standardUserDefaults];
    [defaultsInfoTratamientoPorEmail setObject:enviaStringInfoTratamientoPorEmail forKey:@"enviaStringInfoTratamientoPorEmail"];
    [defaultsInfoTratamientoPorEmail synchronize];
    
    NSString *enviaStringInfoTratamientoPorWathsApp = infoTratamientoPorWathsApp.text;
    NSUserDefaults *defaultsInfoTratamientoPorWathsApp = [NSUserDefaults standardUserDefaults];
    [defaultsInfoTratamientoPorWathsApp setObject:enviaStringInfoTratamientoPorWathsApp forKey:@"enviaStringinfoTratamientoPorWathsApp"];
    [defaultsInfoTratamientoPorWathsApp synchronize];
    
    NSString *enviaStringInfoTratamientoPorCorreoPostal = infoTratamientoPorCorreoPostal.text;
    NSUserDefaults *defaultsInfoTratamientoPorCorreoPostal = [NSUserDefaults standardUserDefaults];
    [defaultsInfoTratamientoPorCorreoPostal setObject:enviaStringInfoTratamientoPorCorreoPostal forKey:@"enviaStringInfoTratamientoPorCorreoPostal"];
    [defaultsInfoTratamientoPorCorreoPostal synchronize];
    
    NSString *enviaStringObservaciones = Observaciones.text;
    NSUserDefaults *defaultsObservaciones = [NSUserDefaults standardUserDefaults];
    [defaultsObservaciones setObject:enviaStringObservaciones forKey:@"enviaStringObservaciones"];
    [defaultsObservaciones synchronize];
    
    NSString *enviaStringFecha_Adulto = Fecha_Adulto.text;
    NSUserDefaults *defaultsFecha_Adulto = [NSUserDefaults standardUserDefaults];
    [defaultsFecha_Adulto setObject:enviaStringFecha_Adulto forKey:@"enviaStringFecha_Adulto"];
    [defaultsFecha_Adulto synchronize];
    
    NSString *enviaStringNombre_Adulto = Nombre_Adulto.text;
    NSUserDefaults *defaultsNombre_Adulto = [NSUserDefaults standardUserDefaults];
    [defaultsNombre_Adulto setObject:enviaStringNombre_Adulto forKey:@"enviaStringNombre_Adulto"];
    [defaultsNombre_Adulto synchronize];
    
    
    NSString *enviaStringApellido_Adulto = Apellido_Adulto.text;
    NSUserDefaults *defaultsApellido_Adulto = [NSUserDefaults standardUserDefaults];
    [defaultsApellido_Adulto setObject:enviaStringApellido_Adulto forKey:@"enviaStringApellido_Adulto"];
    [defaultsApellido_Adulto synchronize];
    
    NSString *enviaStringDireccion_Adulto = Direccion_Adulto.text;
    NSUserDefaults *defaultsDireccion_Adulto = [NSUserDefaults standardUserDefaults];
    [defaultsDireccion_Adulto setObject:enviaStringDireccion_Adulto forKey:@"enviaStringDireccion_Adulto"];
    [defaultsDireccion_Adulto synchronize];
    
    NSString *enviaStringNumero_Adulto = Numero_Adulto.text;
    NSUserDefaults *defaultsNumero_Adulto = [NSUserDefaults standardUserDefaults];
    [defaultsNumero_Adulto setObject:enviaStringNumero_Adulto forKey:@"enviaStringNumero_Adulto"];
    [defaultsNumero_Adulto synchronize];
    
    NSString *enviaStringPiso_Adulto = Piso_Adulto.text;
    NSUserDefaults *defaultsPiso_Adulto = [NSUserDefaults standardUserDefaults];
    [defaultsPiso_Adulto setObject:enviaStringPiso_Adulto forKey:@"enviaStringPiso_Adulto"];
    [defaultsPiso_Adulto synchronize];
    
    NSString *enviaStringLocalidad_Adulto = Localidad_Adulto.text;
    NSUserDefaults *defaultsLocalidad_Adulto = [NSUserDefaults standardUserDefaults];
    [defaultsLocalidad_Adulto setObject:enviaStringLocalidad_Adulto forKey:@"enviaStringLocalidad_Adulto"];
    [defaultsLocalidad_Adulto synchronize];
    
    NSString *enviaStringCodigoPostal_Adulto = CodigoPostal_Adulto.text;
    NSUserDefaults *defaultsCodigoPostal_Adulto = [NSUserDefaults standardUserDefaults];
    [defaultsCodigoPostal_Adulto setObject:enviaStringCodigoPostal_Adulto forKey:@"enviaStringCodigoPostal_Adulto"];
    [defaultsCodigoPostal_Adulto synchronize];
    
    NSString *enviaStringFechaNacimiento_Adulto = FechaNacimiento_Adulto.text;
    NSUserDefaults *defaultsFechaNacimiento_Adulto = [NSUserDefaults standardUserDefaults];
    [defaultsFechaNacimiento_Adulto setObject:enviaStringFechaNacimiento_Adulto forKey:@"enviaStringFechaNacimiento_Adulto"];
    [defaultsFechaNacimiento_Adulto synchronize];
    
    NSString *enviaStringEdad_Adulto = Edad_Adulto.text;
    NSUserDefaults *defaultsEdad_Adulto = [NSUserDefaults standardUserDefaults];
    [defaultsEdad_Adulto setObject:enviaStringEdad_Adulto forKey:@"enviaStringEdad_Adulto"];
    [defaultsEdad_Adulto synchronize];
    
    NSString *enviaStringTelefonoParticular_Adulto = TelefonoParticular_Adulto.text;
    NSUserDefaults *defaultsTelefonoParticular_Adulto = [NSUserDefaults standardUserDefaults];
    [defaultsTelefonoParticular_Adulto setObject:enviaStringTelefonoParticular_Adulto forKey:@"enviaStringTelefonoParticular_Adulto"];
    [defaultsTelefonoParticular_Adulto synchronize];
    
    NSString *enviaStringCorreoElectronico_Adulto = CorreoElectronico_Adulto.text;
    NSUserDefaults *defaultsCorreoElectronico_Adulto = [NSUserDefaults standardUserDefaults];
    [defaultsCorreoElectronico_Adulto setObject:enviaStringCorreoElectronico_Adulto forKey:@"enviaStringCorreoElectronico_Adulto"];
    [defaultsCorreoElectronico_Adulto synchronize];
    
    NSString *enviaStringMovil_Adulto = Movil_Adulto.text;
    NSUserDefaults *defaultsMovil_Adulto = [NSUserDefaults standardUserDefaults];
    [defaultsMovil_Adulto setObject:enviaStringMovil_Adulto forKey:@"enviaStringMovil_Adulto"];
    [defaultsMovil_Adulto synchronize];
    
    NSString *enviaStringQuienHaReferidoNuestraConsulta_Adulto = QuienHaReferidoNuestraConsulta_Adulto.text;
    NSUserDefaults *defaultsQuienHaReferidoNuestraConsulta_Adulto = [NSUserDefaults standardUserDefaults];
    [defaultsQuienHaReferidoNuestraConsulta_Adulto setObject:enviaStringQuienHaReferidoNuestraConsulta_Adulto forKey:@"enviaStringQuienHaReferidoNuestraConsulta_Adulto"];
    [defaultsQuienHaReferidoNuestraConsulta_Adulto synchronize];
    
    NSString *enviaStringProblemaPrincipalDeDientes_Adulto = ProblemaPrincipalDeDientes_Adulto.text;
    NSUserDefaults *defaultsProblemaPrincipalDeDientes_Adulto = [NSUserDefaults standardUserDefaults];
    [defaultsProblemaPrincipalDeDientes_Adulto setObject:enviaStringProblemaPrincipalDeDientes_Adulto forKey:@"enviaStringProblemaPrincipalDeDientes_Adulto"];
    [defaultsProblemaPrincipalDeDientes_Adulto synchronize];
    
    NSString *enviaStringPadeceEnfermedadNo_Adulto = PadeceEnfermedadNo_Adulto.text;
    NSUserDefaults *defaultsPadeceEnfermedadNo_Adulto = [NSUserDefaults standardUserDefaults];
    [defaultsPadeceEnfermedadNo_Adulto setObject:enviaStringPadeceEnfermedadNo_Adulto forKey:@"enviaStringPadeceEnfermedadNo_Adulto"];
    [defaultsPadeceEnfermedadNo_Adulto synchronize];
    
    NSString *enviaStringPadeceEnfermedadSi_Adulto = PadeceEnfermedadSi_Adulto.text;
    NSUserDefaults *defaultsPadeceEnfermedadSi_Adulto = [NSUserDefaults standardUserDefaults];
    [defaultsPadeceEnfermedadSi_Adulto setObject:enviaStringPadeceEnfermedadSi_Adulto forKey:@"enviaStringPadeceEnfermedadSi_Adulto"];
    [defaultsPadeceEnfermedadSi_Adulto synchronize];
    
    NSString *enviaStringPadeceEnfermedadCuales_Adulto = PadeceEnfermedadCuales_Adulto.text;
    NSUserDefaults *defaultsPadeceEnfermedadCuales_Adulto = [NSUserDefaults standardUserDefaults];
    [defaultsPadeceEnfermedadCuales_Adulto setObject:enviaStringPadeceEnfermedadCuales_Adulto forKey:@"enviaStringPadeceEnfermedadCuales_Adulto"];
    [defaultsPadeceEnfermedadCuales_Adulto synchronize];
    
    NSString *enviaStringAlergiaMedicamentosComidasNo_Adulto = AlergiaMedicamentosComidasNo_Adulto.text;
    NSUserDefaults *defaultsAlergiaMedicamentosComidasNo_Adulto = [NSUserDefaults standardUserDefaults];
    [defaultsAlergiaMedicamentosComidasNo_Adulto setObject:enviaStringAlergiaMedicamentosComidasNo_Adulto forKey:@"enviaStringAlergiaMedicamentosComidasNo_Adulto"];
    [defaultsAlergiaMedicamentosComidasNo_Adulto synchronize];
    
    NSString *enviaStringAlergiaMedicamentosComidasSi_Adulto = AlergiaMedicamentosComidasSi_Adulto.text;
    NSUserDefaults *defaultsAlergiaMedicamentosComidasSi_Adulto = [NSUserDefaults standardUserDefaults];
    [defaultsAlergiaMedicamentosComidasSi_Adulto setObject:enviaStringAlergiaMedicamentosComidasSi_Adulto forKey:@"enviaStringAlergiaMedicamentosComidasSi_Adulto"];
    [defaultsAlergiaMedicamentosComidasSi_Adulto synchronize];
    
    NSString *enviaStringAlergiaMedicamentosComidasCuales_Adulto = AlergiaMedicamentosComidasCuales_Adulto.text;
    NSUserDefaults *defaultsAlergiaMedicamentosComidasCuales_Adulto = [NSUserDefaults standardUserDefaults];
    [defaultsAlergiaMedicamentosComidasCuales_Adulto setObject:enviaStringAlergiaMedicamentosComidasCuales_Adulto forKey:@"enviaStringAlergiaMedicamentosComidasCuales_Adulto"];
    [defaultsAlergiaMedicamentosComidasCuales_Adulto synchronize];
    
    NSString *enviaStringMedicacionUtilizada_Adulto = MedicacionUtilizada_Adulto.text;
    NSUserDefaults *defaultsMedicacionUtilizada_Adulto = [NSUserDefaults standardUserDefaults];
    [defaultsMedicacionUtilizada_Adulto setObject:enviaStringMedicacionUtilizada_Adulto forKey:@"enviaStringMedicacionUtilizada_Adulto"];
    [defaultsMedicacionUtilizada_Adulto synchronize];
    
    NSString *enviaStringTratamientoOrtodoncicoNo_Adulto = TratamientoOrtodoncicoNo_Adulto.text;
    NSUserDefaults *defaultsTratamientoOrtodoncicoNo_Adulto = [NSUserDefaults standardUserDefaults];
    [defaultsTratamientoOrtodoncicoNo_Adulto setObject:enviaStringTratamientoOrtodoncicoNo_Adulto forKey:@"enviaStringTratamientoOrtodoncicoNo_Adulto"];
    [defaultsTratamientoOrtodoncicoNo_Adulto synchronize];
    
    NSString *enviaStringTratamientoOrtodoncicoSi_Adulto = TratamientoOrtodoncicoSi_Adulto.text;
    NSUserDefaults *defaultsTratamientoOrtodoncicoSi_Adulto = [NSUserDefaults standardUserDefaults];
    [defaultsTratamientoOrtodoncicoSi_Adulto setObject:enviaStringTratamientoOrtodoncicoSi_Adulto forKey:@"enviaStringTratamientoOrtodoncicoSi_Adulto"];
    [defaultsTratamientoOrtodoncicoSi_Adulto synchronize];
    
    NSString *enviaStringTratamientoOrtodoncicoEdad_Adulto = TratamientoOrtodoncicoEdad_Adulto.text;
    NSUserDefaults *defaultsTratamientoOrtodoncicoEdad_Adulto = [NSUserDefaults standardUserDefaults];
    [defaultsTratamientoOrtodoncicoEdad_Adulto setObject:enviaStringTratamientoOrtodoncicoEdad_Adulto forKey:@"enviaStringTratamientoOrtodoncicoEdad_Adulto"];
    [defaultsTratamientoOrtodoncicoEdad_Adulto synchronize];
    
    NSString *enviaStringOperadoDeAmigdalasVegetacionesNo_Adulto = OperadoDeAmigdalasVegetacionesNo_Adulto.text;
    NSUserDefaults *defaultsOperadoDeAmigdalasVegetacionesNo_Adulto = [NSUserDefaults standardUserDefaults];
    [defaultsOperadoDeAmigdalasVegetacionesNo_Adulto setObject:enviaStringOperadoDeAmigdalasVegetacionesNo_Adulto forKey:@"enviaStringOperadoDeAmigdalasVegetacionesNo_Adulto"];
    [defaultsOperadoDeAmigdalasVegetacionesNo_Adulto synchronize];
    
    NSString *enviaStringOperadoDeAmigdalasVegetacionesSi_Adulto = OperadoDeAmigdalasVegetacionesSi_Adulto.text;
    NSUserDefaults *defaultsOperadoDeAmigdalasVegetacionesSi_Adulto = [NSUserDefaults standardUserDefaults];
    [defaultsOperadoDeAmigdalasVegetacionesSi_Adulto setObject:enviaStringOperadoDeAmigdalasVegetacionesSi_Adulto forKey:@"enviaStringOperadoDeAmigdalasVegetacionesSi_Adulto"];
    [defaultsOperadoDeAmigdalasVegetacionesSi_Adulto synchronize];
    
    NSString *enviaStringOperadoDeAmigdalasVegetacionesEdad_Adulto = OperadoDeAmigdalasVegetacionesEdad_Adulto.text;
    NSUserDefaults *defaultsOperadoDeAmigdalasVegetacionesEdad_Adulto = [NSUserDefaults standardUserDefaults];
    [defaultsOperadoDeAmigdalasVegetacionesEdad_Adulto setObject:enviaStringOperadoDeAmigdalasVegetacionesEdad_Adulto forKey:@"enviaStringOperadoDeAmigdalasVegetacionesEdad_Adulto"];
    [defaultsOperadoDeAmigdalasVegetacionesEdad_Adulto synchronize];
    
    NSString *enviaStringHipertensoNo_Adulto = HipertensoNo_Adulto.text;
    NSUserDefaults *defaultsHipertensoNo_Adulto = [NSUserDefaults standardUserDefaults];
    [defaultsHipertensoNo_Adulto setObject:enviaStringHipertensoNo_Adulto forKey:@"enviaStringHipertensoNo_Adulto"];
    [defaultsHipertensoNo_Adulto synchronize];
    
    NSString *enviaStringHipertensoSi_Adulto = HipertensoSi_Adulto.text;
    NSUserDefaults *defaultsHipertensoSi_Adulto = [NSUserDefaults standardUserDefaults];
    [defaultsHipertensoSi_Adulto setObject:enviaStringHipertensoSi_Adulto forKey:@"enviaStringHipertensoSi_Adulto"];
    [defaultsHipertensoSi_Adulto synchronize];
    
    NSString *enviaStringEmbarazadaNo_Adulto = EmbarazadaNo_Adulto.text;
    NSUserDefaults *defaultsEmbarazadaNo_Adulto = [NSUserDefaults standardUserDefaults];
    [defaultsEmbarazadaNo_Adulto setObject:enviaStringEmbarazadaNo_Adulto forKey:@"enviaStringEmbarazadaNo_Adulto"];
    [defaultsEmbarazadaNo_Adulto synchronize];
    
    NSString *enviaStringEmbarazadaSi_Adulto = EmbarazadaSi_Adulto.text;
    NSUserDefaults *defaultsEmbarazadaSi_Adulto = [NSUserDefaults standardUserDefaults];
    [defaultsEmbarazadaSi_Adulto setObject:enviaStringEmbarazadaSi_Adulto forKey:@"enviaStringEmbarazadaSi_Adulto"];
    [defaultsEmbarazadaSi_Adulto synchronize];
    
    NSString *enviaStringFumadorNo_Adulto = FumadorNo_Adulto.text;
    NSUserDefaults *defaultsFumadorNo_Adulto = [NSUserDefaults standardUserDefaults];
    [defaultsFumadorNo_Adulto setObject:enviaStringFumadorNo_Adulto forKey:@"enviaStringFumadorNo_Adulto"];
    [defaultsFumadorNo_Adulto synchronize];
    
    NSString *enviaStringFumadorSi_Adulto = FumadorSi_Adulto.text;
    NSUserDefaults *defaultsFumadorSi_Adulto = [NSUserDefaults standardUserDefaults];
    [defaultsFumadorSi_Adulto setObject:enviaStringFumadorSi_Adulto forKey:@"enviaStringFumadorSi_Adulto"];
    [defaultsFumadorSi_Adulto synchronize];
    
    NSString *enviaStringAlergicoNo_Adulto = AlergicoNo_Adulto.text;
    NSUserDefaults *defaultsAlergicoNo_Adulto = [NSUserDefaults standardUserDefaults];
    [defaultsAlergicoNo_Adulto setObject:enviaStringAlergicoNo_Adulto forKey:@"enviaStringAlergicoNo_Adulto"];
    [defaultsAlergicoNo_Adulto synchronize];
    
    NSString *enviaStringAlergicoSi_Adulto = AlergicoSi_Adulto.text;
    NSUserDefaults *defaultsAlergicoSi_Adulto = [NSUserDefaults standardUserDefaults];
    [defaultsAlergicoSi_Adulto setObject:enviaStringAlergicoSi_Adulto forKey:@"enviaStringAlergicoSi_Adulto"];
    [defaultsAlergicoSi_Adulto synchronize];
    
    NSString *enviaStringProblemasCardiacosNo_Adulto = ProblemasCardiacosNo_Adulto.text;
    NSUserDefaults *defaultsProblemasCardiacosNo_Adulto = [NSUserDefaults standardUserDefaults];
    [defaultsProblemasCardiacosNo_Adulto setObject:enviaStringProblemasCardiacosNo_Adulto forKey:@"enviaStringProblemasCardiacosNo_Adulto"];
    [defaultsProblemasCardiacosNo_Adulto synchronize];
    
    NSString *enviaStringProblemasCardiacosSi_Adulto = ProblemasCardiacosSi_Adulto.text;
    NSUserDefaults *defaultsProblemasCardiacosSi_Adulto = [NSUserDefaults standardUserDefaults];
    [defaultsProblemasCardiacosSi_Adulto setObject:enviaStringProblemasCardiacosSi_Adulto forKey:@"enviaStringProblemasCardiacosSi_Adulto"];
    [defaultsProblemasCardiacosSi_Adulto synchronize];
    
    NSString *enviaStringProblemasCardiacosCuales_Adulto = ProblemasCardiacosCuales_Adulto.text;
    NSUserDefaults *defaultsProblemasCardiacosCuales_Adulto = [NSUserDefaults standardUserDefaults];
    [defaultsProblemasCardiacosCuales_Adulto setObject:enviaStringProblemasCardiacosCuales_Adulto forKey:@"enviaStringProblemasCardiacosCuales_Adulto"];
    [defaultsProblemasCardiacosCuales_Adulto synchronize];
    
    NSString *enviaStringHepatitisA_Adulto = HepatitisA_Adulto.text;
    NSUserDefaults *defaultsHepatitisA_Adulto = [NSUserDefaults standardUserDefaults];
    [defaultsHepatitisA_Adulto setObject:enviaStringHepatitisA_Adulto forKey:@"enviaStringHepatitisA_Adulto"];
    [defaultsHepatitisA_Adulto synchronize];
    
    NSString *enviaStringHepatitisB_Adulto = HepatitisB_Adulto.text;
    NSUserDefaults *defaultsHepatitisB_Adulto = [NSUserDefaults standardUserDefaults];
    [defaultsHepatitisB_Adulto setObject:enviaStringHepatitisB_Adulto forKey:@"enviaStringHepatitisB_Adulto"];
    [defaultsHepatitisB_Adulto synchronize];
    
    NSString *enviaStringHepatitisC_Adulto = HepatitisC_Adulto.text;
    NSUserDefaults *defaultsHepatitisC_Adulto = [NSUserDefaults standardUserDefaults];
    [defaultsHepatitisC_Adulto setObject:enviaStringHepatitisC_Adulto forKey:@"enviaStringHepatitisC_Adulto"];
    [defaultsHepatitisC_Adulto synchronize];
    
    NSString *enviaStringAnemiaX_Adulto = AnemiaX_Adulto.text;
    NSUserDefaults *defaultsAnemiaX_Adulto = [NSUserDefaults standardUserDefaults];
    [defaultsAnemiaX_Adulto setObject:enviaStringAnemiaX_Adulto forKey:@"enviaStringAnemiaX_Adulto"];
    [defaultsAnemiaX_Adulto synchronize];
    
    NSString *enviaStringDepresionX_Adulto = DepresionX_Adulto.text;
    NSUserDefaults *defaultsDepresionX_Adulto = [NSUserDefaults standardUserDefaults];
    [defaultsDepresionX_Adulto setObject:enviaStringDepresionX_Adulto forKey:@"enviaStringDepresionX_Adulto"];
    [defaultsDepresionX_Adulto synchronize];
    
    NSString *enviaStringEpilepsiaX_Adulto = EpilepsiaX_Adulto.text;
    NSUserDefaults *defaultsEpilepsiaX_Adulto = [NSUserDefaults standardUserDefaults];
    [defaultsEpilepsiaX_Adulto setObject:enviaStringEpilepsiaX_Adulto forKey:@"enviaStringEpilepsiaX_Adulto"];
    [defaultsEpilepsiaX_Adulto synchronize];
    
    NSString *enviaStringProblemasdeRinonesX_Adulto = ProblemasdeRinonesX_Adulto.text;
    NSUserDefaults *defaultsProblemasdeRinonesX_Adulto = [NSUserDefaults standardUserDefaults];
    [defaultsProblemasdeRinonesX_Adulto setObject:enviaStringProblemasdeRinonesX_Adulto forKey:@"enviaStringProblemasdeRinonesX_Adulto"];
    [defaultsProblemasdeRinonesX_Adulto synchronize];
    
    NSString *enviaStringUlcerasX_Adulto = UlcerasX_Adulto.text;
    NSUserDefaults *defaultsUlcerasX_Adulto = [NSUserDefaults standardUserDefaults];
    [defaultsUlcerasX_Adulto setObject:enviaStringUlcerasX_Adulto forKey:@"enviaStringUlcerasX_Adulto"];
    [defaultsUlcerasX_Adulto synchronize];
    
    NSString *enviaStringDiabetesX_Adulto = DiabetesX_Adulto.text;
    NSUserDefaults *defaultsDiabetesX_Adulto = [NSUserDefaults standardUserDefaults];
    [defaultsDiabetesX_Adulto setObject:enviaStringDiabetesX_Adulto forKey:@"enviaStringDiabetesX_Adulto"];
    [defaultsDiabetesX_Adulto synchronize];
    
    NSString *enviaStringHIVX_Adulto = HIVX_Adulto.text;
    NSUserDefaults *defaultsHIVX_Adulto = [NSUserDefaults standardUserDefaults];
    [defaultsHIVX_Adulto setObject:enviaStringHIVX_Adulto forKey:@"enviaStringHIVX_Adulto"];
    [defaultsHIVX_Adulto synchronize];
    
    NSString *enviaStringProblemasTiroidesX_Adulto = ProblemasTiroidesX_Adulto.text;
    NSUserDefaults *defaultsProblemasTiroidesX_Adulto = [NSUserDefaults standardUserDefaults];
    [defaultsProblemasTiroidesX_Adulto setObject:enviaStringProblemasTiroidesX_Adulto forKey:@"enviaStringProblemasTiroidesX_Adulto"];
    [defaultsProblemasTiroidesX_Adulto synchronize];
    
    NSString *enviaStringProblemasPulmonaresX_Adulto = ProblemasPulmonaresX_Adulto.text;
    NSUserDefaults *defaultsProblemasPulmonaresX_Adulto = [NSUserDefaults standardUserDefaults];
    [defaultsProblemasPulmonaresX_Adulto setObject:enviaStringProblemasPulmonaresX_Adulto forKey:@"enviaStringProblemasPulmonaresX_Adulto"];
    [defaultsProblemasPulmonaresX_Adulto synchronize];
    
    NSString *enviaStringCanceresTumoresX_Adulto = CanceresTumoresX_Adulto.text;
    NSUserDefaults *defaultsCanceresTumoresX_Adulto = [NSUserDefaults standardUserDefaults];
    [defaultsCanceresTumoresX_Adulto setObject:enviaStringCanceresTumoresX_Adulto forKey:@"enviaStringCanceresTumoresX_Adulto"];
    [defaultsCanceresTumoresX_Adulto synchronize];
    
    NSString *enviaStringMareosX_Adulto = MareosX_Adulto.text;
    NSUserDefaults *defaultsMareosX_Adulto = [NSUserDefaults standardUserDefaults];
    [defaultsMareosX_Adulto setObject:enviaStringMareosX_Adulto forKey:@"enviaStringMareosX_Adulto"];
    [defaultsMareosX_Adulto synchronize];
    
    NSString *enviaStringDesmayosX_Adulto = DesmayosX_Adulto.text;
    NSUserDefaults *defaultsDesmayosX_Adulto = [NSUserDefaults standardUserDefaults];
    [defaultsDesmayosX_Adulto setObject:enviaStringDesmayosX_Adulto forKey:@"enviaStringDesmayosX_Adulto"];
    [defaultsDesmayosX_Adulto synchronize];

    NSString *enviaStringSangraEnciasX_Adulto = SangraEnciasX_Adulto.text;
    NSUserDefaults *defaultsSangraEnciasX_Adulto = [NSUserDefaults standardUserDefaults];
    [defaultsSangraEnciasX_Adulto setObject:enviaStringSangraEnciasX_Adulto forKey:@"enviaStringSangraEnciasX_Adulto"];
    [defaultsSangraEnciasX_Adulto synchronize];

    
}

#pragma mark - metodo recuperacion de la informacion

-(IBAction)cargarInformacion:(id)sender
{
    
    NSUserDefaults *defaultsInfoTratamientoPorEmail = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringInfoTratamientoPorEmail = [defaultsInfoTratamientoPorEmail objectForKey:@"enviaStringInfoTratamientoPorEmail"];
    [infoTratamientoPorEmail setText:cargaStringInfoTratamientoPorEmail];
    
    NSUserDefaults *defaultsInfoTratamientoPorWathsApp = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringInfoTratamientoPorWathsApp = [defaultsInfoTratamientoPorWathsApp objectForKey:@"enviaStringinfoTratamientoPorWathsApp"];
    [infoTratamientoPorWathsApp setText:cargaStringInfoTratamientoPorWathsApp];
    
    NSUserDefaults *defaultsInfoTratamientoPorCorreoPostal = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringInfoTratamientoPorCorreoPostal = [defaultsInfoTratamientoPorCorreoPostal objectForKey:@"enviaStringInfoTratamientoPorCorreoPostal"];
    [infoTratamientoPorCorreoPostal setText:cargaStringInfoTratamientoPorCorreoPostal];
    
    
    NSUserDefaults *defaultsObervaciones = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringObservaciones = [defaultsObervaciones objectForKey:@"enviaStringObservaciones"];
    [Observaciones setText:cargaStringObservaciones];
    
    NSUserDefaults *defaultsFecha_Adulto = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringFecha_Adulto = [defaultsFecha_Adulto objectForKey:@"enviaStringFecha_Adulto"];
    [Fecha_Adulto setText:cargaStringFecha_Adulto];
    
    NSUserDefaults *defaultsNombre_Adulto = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringNombre_Adulto = [defaultsNombre_Adulto objectForKey:@"enviaStringNombre_Adulto"];
    [Nombre_Adulto setText:cargaStringNombre_Adulto];
    
    NSUserDefaults *defaultsApellido_Adulto = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringApellido_Adulto = [defaultsApellido_Adulto objectForKey:@"enviaStringApellido_Adulto"];
    [Apellido_Adulto setText:cargaStringApellido_Adulto];
    
    NSUserDefaults *defaultsDireccion_Adulto = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringDireccion_Adulto = [defaultsDireccion_Adulto objectForKey:@"enviaStringDireccion_Adulto"];
    [Direccion_Adulto setText:cargaStringDireccion_Adulto];
    
    NSUserDefaults *defaultsNumero_Adulto = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringNumero_Adulto = [defaultsNumero_Adulto objectForKey:@"enviaStringNumero_Adulto"];
    [Numero_Adulto setText:cargaStringNumero_Adulto];
    
    NSUserDefaults *defaultsPiso_Adulto = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringPiso_Adulto = [defaultsPiso_Adulto objectForKey:@"enviaStringPiso_Adulto"];
    [Piso_Adulto setText:cargaStringPiso_Adulto];
    
    NSUserDefaults *defaultsLocalidad_Adulto = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringLocalidad_Adulto = [defaultsLocalidad_Adulto objectForKey:@"enviaStringLocalidad_Adulto"];
    [Localidad_Adulto setText:cargaStringLocalidad_Adulto];
    
    NSUserDefaults *defaultsCodigoPostal_Adulto = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringCodigoPostal_Adulto = [defaultsCodigoPostal_Adulto objectForKey:@"enviaStringCodigoPostal_Adulto"];
    [CodigoPostal_Adulto setText:cargaStringCodigoPostal_Adulto];
    
    NSUserDefaults *defaultsFechaNacimiento_Adulto = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringFechaNacimiento_Adulto = [defaultsFechaNacimiento_Adulto objectForKey:@"enviaStringFechaNacimiento_Adulto"];
    [FechaNacimiento_Adulto setText:cargaStringFechaNacimiento_Adulto];
    
    NSUserDefaults *defaultsEdad_Adulto = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringEdad_Adulto = [defaultsEdad_Adulto objectForKey:@"enviaStringEdad_Adulto"];
    [Edad_Adulto setText:cargaStringEdad_Adulto];
    
    NSUserDefaults *defaultsTelefonoParticular_Adulto = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringTelefonoParticular_Adulto = [defaultsTelefonoParticular_Adulto objectForKey:@"enviaStringTelefonoParticular_Adulto"];
    [TelefonoParticular_Adulto setText:cargaStringTelefonoParticular_Adulto];
    
    NSUserDefaults *defaultsCorreoElectronico_Adulto = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringCorreoElectronico_Adulto = [defaultsCorreoElectronico_Adulto objectForKey:@"enviaStringCorreoElectronico_Adulto"];
    [CorreoElectronico_Adulto setText:cargaStringCorreoElectronico_Adulto];
    
    NSUserDefaults *defaultsMovil_Adulto = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringMovil_Adulto = [defaultsMovil_Adulto objectForKey:@"enviaStringMovil_Adulto"];
    [Movil_Adulto setText:cargaStringMovil_Adulto];
    
    NSUserDefaults *defaultsQuienHaReferidoNuestraConsulta_Adulto = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringQuienHaReferidoNuestraConsulta_Adulto = [defaultsQuienHaReferidoNuestraConsulta_Adulto objectForKey:@"enviaStringQuienHaReferidoNuestraConsulta_Adulto"];
    [QuienHaReferidoNuestraConsulta_Adulto setText:cargaStringQuienHaReferidoNuestraConsulta_Adulto];
    
    NSUserDefaults *defaultsProblemaPrincipalDeDientes_Adulto = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringProblemaPrincipalDeDientes_Adulto = [defaultsProblemaPrincipalDeDientes_Adulto objectForKey:@"enviaStringProblemaPrincipalDeDientes_Adulto"];
    [ProblemaPrincipalDeDientes_Adulto setText:cargaStringProblemaPrincipalDeDientes_Adulto];
    
    NSUserDefaults *defaultsPadeceEnfermedadNo_Adulto = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringPadeceEnfermedadNo_Adulto = [defaultsPadeceEnfermedadNo_Adulto objectForKey:@"enviaStringPadeceEnfermedadNo_Adulto"];
    [PadeceEnfermedadNo_Adulto setText:cargaStringPadeceEnfermedadNo_Adulto];
    
    NSUserDefaults *defaultsPadeceEnfermedadSi_Adulto = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringPadeceEnfermedadSi_Adulto = [defaultsPadeceEnfermedadSi_Adulto objectForKey:@"enviaStringPadeceEnfermedadSi_Adulto"];
    [PadeceEnfermedadSi_Adulto setText:cargaStringPadeceEnfermedadSi_Adulto];
    
    NSUserDefaults *defaultsPadeceEnfermedadCuales_Adulto = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringPadeceEnfermedadCuales_Adulto = [defaultsPadeceEnfermedadCuales_Adulto objectForKey:@"enviaStringPadeceEnfermedadCuales_Adulto"];
    [PadeceEnfermedadCuales_Adulto setText:cargaStringPadeceEnfermedadCuales_Adulto];
    
    NSUserDefaults *defaultsAlergiaMedicamentosComidasNo_Adulto = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringAlergiaMedicamentosComidasNo_Adulto = [defaultsAlergiaMedicamentosComidasNo_Adulto objectForKey:@"enviaStringAlergiaMedicamentosComidasNo_Adulto"];
    [AlergiaMedicamentosComidasNo_Adulto setText:cargaStringAlergiaMedicamentosComidasNo_Adulto];
    
    NSUserDefaults *defaultsAlergiaMedicamentosComidasSi_Adulto = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringAlergiaMedicamentosComidasSi_Adulto = [defaultsAlergiaMedicamentosComidasSi_Adulto objectForKey:@"enviaStringAlergiaMedicamentosComidasSi_Adulto"];
    [AlergiaMedicamentosComidasSi_Adulto setText:cargaStringAlergiaMedicamentosComidasSi_Adulto];
    
    NSUserDefaults *defaultsAlergiaMedicamentosComidasCuales_Adulto = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringAlergiaMedicamentosComidasCuales_Adulto = [defaultsAlergiaMedicamentosComidasCuales_Adulto objectForKey:@"enviaStringAlergiaMedicamentosComidasCuales_Adulto"];
    [AlergiaMedicamentosComidasCuales_Adulto setText:cargaStringAlergiaMedicamentosComidasCuales_Adulto];
    
    NSUserDefaults *defaultsMedicacionUtilizada_Adulto = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringMedicacionUtilizada_Adulto = [defaultsMedicacionUtilizada_Adulto objectForKey:@"enviaStringMedicacionUtilizada_Adulto"];
    [MedicacionUtilizada_Adulto setText:cargaStringMedicacionUtilizada_Adulto];
    
    NSUserDefaults *defaultsTratamientoOrtodoncicoNo_Adulto = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringTratamientoOrtodoncicoNo_Adulto = [defaultsTratamientoOrtodoncicoNo_Adulto objectForKey:@"enviaStringTratamientoOrtodoncicoNo_Adulto"];
    [TratamientoOrtodoncicoNo_Adulto setText:cargaStringTratamientoOrtodoncicoNo_Adulto];
    
    NSUserDefaults *defaultsTratamientoOrtodoncicoSi_Adulto = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringTratamientoOrtodoncicoSi_Adulto = [defaultsTratamientoOrtodoncicoSi_Adulto objectForKey:@"enviaStringTratamientoOrtodoncicoSi_Adulto"];
    [TratamientoOrtodoncicoSi_Adulto setText:cargaStringTratamientoOrtodoncicoSi_Adulto];
    
    NSUserDefaults *defaultsTratamientoOrtodoncicoEdad_Adulto = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringTratamientoOrtodoncicoEdad_Adulto = [defaultsTratamientoOrtodoncicoEdad_Adulto objectForKey:@"enviaStringTratamientoOrtodoncicoEdad_Adulto"];
    [TratamientoOrtodoncicoEdad_Adulto setText:cargaStringTratamientoOrtodoncicoEdad_Adulto];
    
    NSUserDefaults *defaultsOperadoDeAmigdalasVegetacionesNo_Adulto = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringOperadoDeAmigdalasVegetacionesNo_Adulto = [defaultsOperadoDeAmigdalasVegetacionesNo_Adulto objectForKey:@"enviaStringOperadoDeAmigdalasVegetacionesNo_Adulto"];
    [OperadoDeAmigdalasVegetacionesNo_Adulto setText:cargaStringOperadoDeAmigdalasVegetacionesNo_Adulto];
    
    NSUserDefaults *defaultsOperadoDeAmigdalasVegetacionesSi_Adulto = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringOperadoDeAmigdalasVegetacionesSi_Adulto = [defaultsOperadoDeAmigdalasVegetacionesSi_Adulto objectForKey:@"enviaStringOperadoDeAmigdalasVegetacionesSi_Adulto"];
    [OperadoDeAmigdalasVegetacionesSi_Adulto setText:cargaStringOperadoDeAmigdalasVegetacionesSi_Adulto];
    
    NSUserDefaults *defaultsOperadoDeAmigdalasVegetacionesEdad_Adulto = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringOperadoDeAmigdalasVegetacionesEdad_Adulto = [defaultsOperadoDeAmigdalasVegetacionesEdad_Adulto objectForKey:@"enviaStringOperadoDeAmigdalasVegetacionesEdad_Adulto"];
    [OperadoDeAmigdalasVegetacionesEdad_Adulto setText:cargaStringOperadoDeAmigdalasVegetacionesEdad_Adulto];
    
    NSUserDefaults *defaultsHipertensoNo_Adulto = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringHipertensoNo_Adulto = [defaultsHipertensoNo_Adulto objectForKey:@"enviaStringHipertensoNo_Adulto"];
    [HipertensoNo_Adulto setText:cargaStringHipertensoNo_Adulto];
    
    NSUserDefaults *defaultsHipertensoSi_Adulto = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringHipertensoSi_Adulto = [defaultsHipertensoSi_Adulto objectForKey:@"enviaStringHipertensoSi_Adulto"];
    [HipertensoSi_Adulto setText:cargaStringHipertensoSi_Adulto];
    
    NSUserDefaults *defaultsEmbarazadaNo_Adulto = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringEmbarazadaNo_Adulto = [defaultsEmbarazadaNo_Adulto objectForKey:@"enviaStringEmbarazadaNo_Adulto"];
    [EmbarazadaNo_Adulto setText:cargaStringEmbarazadaNo_Adulto];
    
    NSUserDefaults *defaultsEmbarazadaSi_Adulto = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringEmbarazadaSi_Adulto = [defaultsEmbarazadaSi_Adulto objectForKey:@"enviaStringEmbarazadaSi_Adulto"];
    [EmbarazadaSi_Adulto setText:cargaStringEmbarazadaSi_Adulto];
    
    NSUserDefaults *defaultsFumadorNo_Adulto = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringFumadorNo_Adulto = [defaultsFumadorNo_Adulto objectForKey:@"enviaStringFumadorNo_Adulto"];
    [FumadorNo_Adulto setText:cargaStringFumadorNo_Adulto];
    
    NSUserDefaults *defaultsFumadorSi_Adulto = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringFumadorSi_Adulto = [defaultsFumadorSi_Adulto objectForKey:@"enviaStringFumadorSi_Adulto"];
    [FumadorSi_Adulto setText:cargaStringFumadorSi_Adulto];
    
    NSUserDefaults *defaultsAlergicoNo_Adulto = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringAlergicoNo_Adulto = [defaultsAlergicoNo_Adulto objectForKey:@"enviaStringAlergicoNo_Adulto"];
    [AlergicoNo_Adulto setText:cargaStringAlergicoNo_Adulto];
    
    NSUserDefaults *defaultsAlergicoSi_Adulto = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringAlergicoSi_Adulto = [defaultsAlergicoSi_Adulto objectForKey:@"enviaStringAlergicoSi_Adulto"];
    [AlergicoSi_Adulto setText:cargaStringAlergicoSi_Adulto];
    
    NSUserDefaults *defaultsProblemasCardiacosNo_Adulto = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringProblemasCardiacosNo_Adulto = [defaultsProblemasCardiacosNo_Adulto objectForKey:@"enviaStringProblemasCardiacosNo_Adulto"];
    [ProblemasCardiacosNo_Adulto setText:cargaStringProblemasCardiacosNo_Adulto];
    
    NSUserDefaults *defaultsProblemasCardiacosSi_Adulto = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringProblemasCardiacosSi_Adulto = [defaultsProblemasCardiacosSi_Adulto objectForKey:@"enviaStringProblemasCardiacosSi_Adulto"];
    [ProblemasCardiacosSi_Adulto setText:cargaStringProblemasCardiacosSi_Adulto];
    
    NSUserDefaults *defaultsProblemasCardiacosCuales_Adulto = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringProblemasCardiacosCuales_Adulto = [defaultsProblemasCardiacosCuales_Adulto objectForKey:@"enviaStringProblemasCardiacosCuales_Adulto"];
    [ProblemasCardiacosCuales_Adulto setText:cargaStringProblemasCardiacosCuales_Adulto];
    
    NSUserDefaults *defaultsHepatitisA_Adulto = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringHepatitisA_Adulto = [defaultsHepatitisA_Adulto objectForKey:@"enviaStringHepatitisA_Adulto"];
    [HepatitisA_Adulto setText:cargaStringHepatitisA_Adulto];
    
    NSUserDefaults *defaultsHepatitisB_Adulto = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringHepatitisB_Adulto = [defaultsHepatitisB_Adulto objectForKey:@"enviaStringHepatitisB_Adulto"];
    [HepatitisB_Adulto setText:cargaStringHepatitisB_Adulto];
    
    NSUserDefaults *defaultsHepatitisC_Adulto = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringHepatitisC_Adulto = [defaultsHepatitisC_Adulto objectForKey:@"enviaStringHepatitisC_Adulto"];
    [HepatitisC_Adulto setText:cargaStringHepatitisC_Adulto];
    
    NSUserDefaults *defaultsAnemiaX_Adulto = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringAnemiaX_Adulto = [defaultsAnemiaX_Adulto objectForKey:@"enviaStringAnemiaX_Adulto"];
    [AnemiaX_Adulto setText:cargaStringAnemiaX_Adulto];
    
    NSUserDefaults *defaultsDepresionX_Adulto = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringDepresionX_Adulto = [defaultsDepresionX_Adulto objectForKey:@"enviaStringDepresionX_Adulto"];
    [DepresionX_Adulto setText:cargaStringDepresionX_Adulto];
    
    NSUserDefaults *defaultsEpilepsiaX_Adulto = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringEpilepsiaX_Adulto = [defaultsEpilepsiaX_Adulto objectForKey:@"enviaStringEpilepsiaX_Adulto"];
    [EpilepsiaX_Adulto setText:cargaStringEpilepsiaX_Adulto];
    
    NSUserDefaults *defaultsProblemasdeRinonesX_Adulto = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringProblemasdeRinonesX_Adulto = [defaultsProblemasdeRinonesX_Adulto objectForKey:@"enviaStringProblemasdeRinonesX_Adulto"];
    [ProblemasdeRinonesX_Adulto setText:cargaStringProblemasdeRinonesX_Adulto];
    
    NSUserDefaults *defaultsUlcerasX_Adulto = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringUlcerasX_Adulto = [defaultsUlcerasX_Adulto objectForKey:@"enviaStringUlcerasX_Adulto"];
    [UlcerasX_Adulto setText:cargaStringUlcerasX_Adulto];
    
    NSUserDefaults *defaultsDiabetesX_Adulto = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringDiabetesX_Adulto = [defaultsDiabetesX_Adulto objectForKey:@"enviaStringDiabetesX_Adulto"];
    [DiabetesX_Adulto setText:cargaStringDiabetesX_Adulto];
    
    NSUserDefaults *defaultsHIVX_Adulto = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringHIVX_Adulto = [defaultsHIVX_Adulto objectForKey:@"enviaStringHIVX_Adulto"];
    [HIVX_Adulto setText:cargaStringHIVX_Adulto];
    
    NSUserDefaults *defaultsProblemasTiroidesX_Adulto = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringProblemasTiroidesX_Adulto = [defaultsProblemasTiroidesX_Adulto objectForKey:@"enviaStringProblemasTiroidesX_Adulto"];
    [ProblemasTiroidesX_Adulto setText:cargaStringProblemasTiroidesX_Adulto];
    
    NSUserDefaults *defaultsProblemasPulmonaresX_Adulto = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringProblemasPulmonaresX_Adulto = [defaultsProblemasPulmonaresX_Adulto objectForKey:@"enviaStringProblemasPulmonaresX_Adulto"];
    [ProblemasPulmonaresX_Adulto setText:cargaStringProblemasPulmonaresX_Adulto];
    
    NSUserDefaults *defaultsCanceresTumoresX_Adulto = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringCanceresTumoresX_Adulto = [defaultsCanceresTumoresX_Adulto objectForKey:@"enviaStringCanceresTumoresX_Adulto"];
    [CanceresTumoresX_Adulto setText:cargaStringCanceresTumoresX_Adulto];
    
    NSUserDefaults *defaultsMareosX_Adulto = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringMareosX_Adulto = [defaultsMareosX_Adulto objectForKey:@"enviaStringMareosX_Adulto"];
    [MareosX_Adulto setText:cargaStringMareosX_Adulto];
    
    NSUserDefaults *defaultsDesmayosX_Adulto = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringDesmayosX_Adulto = [defaultsDesmayosX_Adulto objectForKey:@"enviaStringDesmayosX_Adulto"];
    [DesmayosX_Adulto setText:cargaStringDesmayosX_Adulto];
    
    NSUserDefaults *defaultsSangraEnciasX_Adulto = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringSangraEnciasX_Adulto = [defaultsSangraEnciasX_Adulto objectForKey:@"enviaStringSangraEnciasX_Adulto"];
    [SangraEnciasX_Adulto setText:cargaStringSangraEnciasX_Adulto];
       
}


-(IBAction)dismisseObservaciones:(id)sender
{
    [sender resignFirstResponder];
}

- (IBAction)dissmissInfoTratamientoPorEMail:(id)sender {
    [sender resignFirstResponder];
}

- (IBAction)dissmissInfoTratamientoPorWathsApp:(id)sender{
    [sender resignFirstResponder];
}
- (IBAction)dissmissInfoTratamientoPorCorreoPostal:(id)sender{
    [sender resignFirstResponder];
}

-(IBAction)dismisseFecha_Adulto:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseNombre_Adulto:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseApellido_Adulto:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseDireccion_Adulto:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseNumero_Adulto:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismissePiso_Adulto:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseLocalidad_Adulto:(id)sender;
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseCodigoPostal_Adulto:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseFechaNacimiento_Adulto:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseEdad_Adulto:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseTelefonoParticular_Adulto:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseCorreoElectronico_Adulto:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseMovil_Adulto:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseQuienHaReferidoNuestraConsulta_Adulto:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseProblemaPrincipalDeDientes_Adulto:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismissePadeceEnfermedadNo_Adulto:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismissePadeceEnfermedadSi_Adulto:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismissePadeceEnfermedadCuales_Adulto:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseAlergiaMedicamentosComidasNo_Adulto:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseAlergiaMedicamentosComidasSi_Adulto:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseAlergiaMedicamentosComidasCuales_Adulto:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseMedicacionUtilizada_Adulto:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseTratamientoOrtodoncicoNo_Adulto:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseTratamientoOrtodoncicoSi_Adulto:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseTratamientoOrtodoncicoCuales_Adulto:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseOperadoDeAmigdalasVegetacionesNo_Adulto:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseOperadoDeAmigdalasVegetacionesSi_Adulto:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseOperadoDeAmigdalasVegetacionesCuales_Adulto:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseHipertensoNo_Adulto:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseHipertensoSi_Adulto:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseEmbarazadaNo_Adulto:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseEmbarazadaSi_Adulto:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseFumadorNo_Adulto:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseFumadorSi_Adulto:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseAlergicoNo_Adulto:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseAlergicoSi_Adulto:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseProblemasCardiacosNo_Adulto:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseProblemasCardiacosSi_Adulto:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseProblemasCardiacosCuales_Adulto:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseHepatitisA_Adulto:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseHepatitisB_Adulto:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseHepatitisC_Adulto:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseAnemiaX_Adulto:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseDepresionX_Adulto:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseEpilepsiaX_Adulto:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseProblemasdeRinonesX_Adulto:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseUlcerasX_Adulto:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseDiabetesX_Adulto:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseHIVX_Adulto:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseProblemasTiroidesX_Adulto:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseProblemasPulmonaresX_Adulto:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseCanceresTumoresX_Adulto:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseMareosX_Adulto:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseDesmayosX_Adulto:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseSangraEnciasX_Adulto:(id)sender
{
    [sender resignFirstResponder];
}



- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.overlayImageView.image = [UIImage imageNamed:@"iPhone4"];
    self.backgroundImageView.image = [UIImage imageNamed:@"Aurora"];
    
    

}


-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    if (textField == Fecha_Adulto) {
        [Fecha_Adulto becomeFirstResponder];
    }
    else if (textField == Nombre_Adulto)
    {
        [Nombre_Adulto becomeFirstResponder];
    }
    else if (textField == Apellido_Adulto)
    {
        [Apellido_Adulto becomeFirstResponder];
    }
    else if (textField == Direccion_Adulto)
    {
        [Direccion_Adulto becomeFirstResponder];
    }
    else if (textField == Numero_Adulto)
    {
        [Numero_Adulto becomeFirstResponder];
    }
    else if (textField == Piso_Adulto)
    {
        [Piso_Adulto becomeFirstResponder];
    }
    else if (textField == Localidad_Adulto)
    {
        [Localidad_Adulto becomeFirstResponder];
    }
    else if (textField == CodigoPostal_Adulto)
    {
        [CodigoPostal_Adulto becomeFirstResponder];
    }
    else if (textField == FechaNacimiento_Adulto)
    {
        [FechaNacimiento_Adulto becomeFirstResponder];
    }
    else if (textField == Edad_Adulto)
    {
        [Edad_Adulto becomeFirstResponder];
    }
    else if (textField == TelefonoParticular_Adulto)
    {
        [TelefonoParticular_Adulto becomeFirstResponder];
    }
    else if (textField == CorreoElectronico_Adulto)
    {
        [CorreoElectronico_Adulto becomeFirstResponder];
    }
    else if (textField == Movil_Adulto)
    {
        [Movil_Adulto becomeFirstResponder];
    }
    else if (textField == QuienHaReferidoNuestraConsulta_Adulto)
    {
        [QuienHaReferidoNuestraConsulta_Adulto becomeFirstResponder];
    }
    else if (textField == ProblemaPrincipalDeDientes_Adulto)
    {
        [ProblemaPrincipalDeDientes_Adulto becomeFirstResponder];
    }
    else if (textField == PadeceEnfermedadNo_Adulto)
    {
        [PadeceEnfermedadNo_Adulto becomeFirstResponder];
    }
    else if (textField == PadeceEnfermedadSi_Adulto)
    {
        [PadeceEnfermedadSi_Adulto becomeFirstResponder];
    }
    else if (textField == PadeceEnfermedadCuales_Adulto)
    {
        [PadeceEnfermedadCuales_Adulto becomeFirstResponder];
    }
    else if (textField == AlergiaMedicamentosComidasNo_Adulto)
    {
        [AlergiaMedicamentosComidasNo_Adulto becomeFirstResponder];
    }
    else if (textField == AlergiaMedicamentosComidasSi_Adulto)
    {
        [AlergiaMedicamentosComidasSi_Adulto becomeFirstResponder];
    }
    else if (textField == AlergiaMedicamentosComidasCuales_Adulto)
    {
        [AlergiaMedicamentosComidasCuales_Adulto becomeFirstResponder];
    }
    else if (textField == MedicacionUtilizada_Adulto)
    {
        [MedicacionUtilizada_Adulto becomeFirstResponder];
    }
    else if (textField == TratamientoOrtodoncicoNo_Adulto)
    {
        [TratamientoOrtodoncicoNo_Adulto becomeFirstResponder];
    }
    else if (textField == TratamientoOrtodoncicoSi_Adulto)
    {
        [TratamientoOrtodoncicoSi_Adulto becomeFirstResponder];
    }
    else if (textField == TratamientoOrtodoncicoEdad_Adulto)
    {
        [TratamientoOrtodoncicoEdad_Adulto becomeFirstResponder];
    }
    else if (textField == OperadoDeAmigdalasVegetacionesNo_Adulto)
    {
        [OperadoDeAmigdalasVegetacionesNo_Adulto becomeFirstResponder];
    }
    else if (textField == OperadoDeAmigdalasVegetacionesSi_Adulto)
    {
        [OperadoDeAmigdalasVegetacionesSi_Adulto becomeFirstResponder];
    }
    else if (textField == OperadoDeAmigdalasVegetacionesEdad_Adulto)
    {
        [OperadoDeAmigdalasVegetacionesEdad_Adulto becomeFirstResponder];
    }
    else if (textField == HipertensoNo_Adulto)
    {
        [HipertensoNo_Adulto becomeFirstResponder];
    }
    else if (textField == HipertensoSi_Adulto)
    {
        [HipertensoSi_Adulto becomeFirstResponder];
    }
    else if (textField == EmbarazadaNo_Adulto)
    {
        [EmbarazadaNo_Adulto becomeFirstResponder];
    }
    else if (textField == EmbarazadaSi_Adulto)
    {
        [EmbarazadaSi_Adulto becomeFirstResponder];
    }
    else if (textField == FumadorNo_Adulto)
    {
        [FumadorNo_Adulto becomeFirstResponder];
    }
    else if (textField == FumadorSi_Adulto)
    {
        [FumadorSi_Adulto becomeFirstResponder];
    }
    else if (textField == AlergicoNo_Adulto)
    {
        [AlergicoNo_Adulto becomeFirstResponder];
    }
    else if (textField == AlergicoSi_Adulto)
    {
        [AlergicoSi_Adulto becomeFirstResponder];
    }
    else if (textField == ProblemasCardiacosNo_Adulto)
    {
        [ProblemasCardiacosNo_Adulto becomeFirstResponder];
    }
    else if (textField == ProblemasCardiacosSi_Adulto)
    {
        [ProblemasCardiacosSi_Adulto becomeFirstResponder];
    }
    else if (textField == ProblemasCardiacosCuales_Adulto)
    {
        [ProblemasCardiacosCuales_Adulto becomeFirstResponder];
    }
    else if (textField == HepatitisA_Adulto)
    {
        [HepatitisA_Adulto becomeFirstResponder];
    }
    else if (textField == HepatitisB_Adulto)
    {
        [HepatitisB_Adulto becomeFirstResponder];
    }
    else if (textField == HepatitisC_Adulto)
    {
        [HepatitisC_Adulto becomeFirstResponder];
    }
    else if (textField == AnemiaX_Adulto)
    {
        [AnemiaX_Adulto becomeFirstResponder];
    }
    else if (textField == DepresionX_Adulto)
    {
        [DepresionX_Adulto becomeFirstResponder];
    }
    else if (textField == EpilepsiaX_Adulto)
    {
        [EpilepsiaX_Adulto becomeFirstResponder];
    }
    else if (textField == ProblemasdeRinonesX_Adulto)
    {
        [ProblemasdeRinonesX_Adulto becomeFirstResponder];
    }
    else if (textField == UlcerasX_Adulto)
    {
        [UlcerasX_Adulto becomeFirstResponder];
    }
    else if (textField == DiabetesX_Adulto)
    {
        [DiabetesX_Adulto becomeFirstResponder];
    }
    else if (textField == HIVX_Adulto)
    {
        [HIVX_Adulto becomeFirstResponder];
    }
    else if (textField == ProblemasTiroidesX_Adulto)
    {
        [ProblemasTiroidesX_Adulto becomeFirstResponder];
    }
    else if (textField == ProblemasPulmonaresX_Adulto)
    {
        [ProblemasPulmonaresX_Adulto becomeFirstResponder];
    }
    else if (textField == CanceresTumoresX_Adulto)
    {
        [CanceresTumoresX_Adulto becomeFirstResponder];
    }
    else if (textField == MareosX_Adulto)
    {
        [MareosX_Adulto becomeFirstResponder];
    }
    else if (textField == DesmayosX_Adulto)
    {
        [DesmayosX_Adulto becomeFirstResponder];
    }
    else if (textField == SangraEnciasX_Adulto)
    {
        [SangraEnciasX_Adulto becomeFirstResponder];
    }
    else
    {
        [textField resignFirstResponder];
    }
    return YES;
    
}

-(void)textFieldDidBeginEditing:(UITextField *)textField
{
    [scrollView adjustOffsetToIdealIfNeeded];
}


-(IBAction)getUIKitScreeshot
{
    self.screenPictureView = nil;
    self.screenshotImage = [self uiKitScreenshot];
    [self performSelector:@selector(displayScreenshotImage) withObject:nil afterDelay:0.10];
    self.screenPictureLabel.text = @"Imagen Completada";
}


-(UIImage *)uiKitScreenshot

{
    
    CGSize imageSize = [[UIScreen mainScreen]bounds].size;
    
    if (NULL != &UIGraphicsBeginImageContextWithOptions)
        UIGraphicsBeginImageContextWithOptions(imageSize, NO, 0);
    else
        UIGraphicsBeginImageContext(imageSize);
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    for (UIWindow *window in [[UIApplication sharedApplication] windows])
    {
        if (![window respondsToSelector:@selector(screen)] || [window screen] == [UIScreen mainScreen])
        {
            CGContextSaveGState(context);
            CGContextTranslateCTM(context, [window center].x, [window center].y);
            CGContextConcatCTM(context, [window transform]);
            CGContextTranslateCTM(context,  - [window bounds].size.width * [[window layer] anchorPoint].x ,
                                            - [window bounds].size.height * [[window layer]anchorPoint].y);
            [[window layer]renderInContext:context];
            CGContextRestoreGState(context);
        }
        
        
    }
    
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();
    
    UIImageWriteToSavedPhotosAlbum(image, nil, nil, nil);
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Atención!"
                                                    message:@"Proceso realizado Satisfactoriamente"
                                                   delegate:nil
                                          cancelButtonTitle:nil
                                          otherButtonTitles:@"OK!", nil];
    
    [alert show];
    
    
        MFMailComposeViewController *picker = [[MFMailComposeViewController alloc] init];
        
        picker.mailComposeDelegate = self;
        
        
        [picker setSubject:@"Envío *.jpg para base de datos Nuevos pacientes"];
        
        NSArray *toRecipient = @[@"registros@ortoface.com"];
        
        [picker setToRecipients:toRecipient];
        
        
        NSData *imageData = UIImageJPEGRepresentation(image, 1);
        
        [picker addAttachmentData:imageData mimeType:@"../jpg" fileName:@"Screenshot.jpg"];
        
        NSString *emailBody = @"Texto complementario";
        
        [picker setMessageBody:emailBody isHTML:NO];
        
        [self presentViewController:picker animated:YES completion:nil];
    
    
    return image;
 
}

- (void)mailComposeController:(MFMailComposeViewController*)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError*)error
{
    switch (result)
    {
        case MFMailComposeResultCancelled:
            NSLog(@"Mail cancelled: you cancelled the operation and no email message was queued.");
            break;
        case MFMailComposeResultSaved:
            NSLog(@"Mail saved: you saved the email message in the drafts folder.");
            break;
        case MFMailComposeResultSent:
            NSLog(@"Mail send: the email message is queued in the outbox. It is ready to send.");
            break;
        case MFMailComposeResultFailed:
            NSLog(@"Mail failed: the email message was not saved or queued, possibly due to an error.");
            break;
        default:
            NSLog(@"Mail not sent.");
            break;
    }
    
    [self dismissViewControllerAnimated:YES completion:nil];
}


-(void)displayScreenshotImage
{
    self.screenPictureImageView.layer.minificationFilter = kCAFilterLinear;
    self.screenPictureImageView.layer.minificationFilterBias = 0.0;
    self.screenPictureImageView.image = self.screenshotImage;
    self.screenPictureLabel.text = @"Imagen Completada";
}


@end
