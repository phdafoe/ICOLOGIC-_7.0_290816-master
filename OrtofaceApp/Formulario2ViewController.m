//
//  Formulario2ViewController.m
//  OrtofaceApp
//
//  Created by andres ocampo on 17/10/12.
//  Copyright (c) 2012 andres ocampo. All rights reserved.
//

#import "Formulario2ViewController.h"
#import "KBF2ScrollView.h"
#import <QuartzCore/QuartzCore.h>
#import <AVFoundation/AVFoundation.h>
#import <CoreGraphics/CoreGraphics.h>
#import <ImageIO/ImageIO.h>
#import <AssetsLibrary/AssetsLibrary.h>
#import "FirmaDigital_Kid_ViewController.h"


@implementation Formulario2ViewController


@synthesize Fecha_kid, Nombre_Kid, Apellido_Kid, Direccion_kid, Numero_kid, Piso_kid, FechaNacimiento_kid, Edad_kid, Localidad_kid, CodigoPostal_Kid,  NombrePadre_kid, NombreMadre_kid, ProfesionPadre_kid, ProfesionMadre_kid, CorreoElectronicoPadre_Kid, CorreoElectronicoMadre_kid, MovilPadre_kid, MovilMadre_kid, CuantosHermanosTienePaciente_kid, OtroMiembroEnConsulta_kid, QuienHaReferidoConsulta_kid, ProblemPrincipalDientes_kid, PadeceAlgunTipoDeEnfermedadNo_kid, PadeceAlgunTipoDeEnfermedadSi_kid, PadeceAlgunTipoDeEnfermedadCuales_kid, AlergiaMedicamentosNo_kid, AlergiaMedicamentosSi_kid, AlergiaMedicamentosCuales_kid, TraumatismoCabezaCaraNo_kid, TraumatismoCabezaCaraSi_kid, TraumatismoCabezaCaraCuales_kid, MedicacionUtilizada_kid, RoncaCuandoDuermeNo_Kid, RoncaCuandoDuermeSi_Kid, RespiraPorBocaSiempre_kid, RespiraPorBocaAlgunasVeces_kid, RespiraPorBocaNunca_kid, TieneTendenciaGripaNo_kid, TieneTendenciaGripaSi_kid, TratamientoOrtodoncicoNo_kid, TratamientoOrtodoncicoSi_kid, TratamientoOrtodoncicoEdad_kid, OperadoDeAmigdalasVegetacionesNo_kid, OperadoDeAmigdalasVegetacionesSi_kid, OperadoDeAmigdalasVegetacionesEdad_kid, UsoChupeteNo_kid, UsoChupeteSi_kid, UsoChupeteEdad_kid, ChupoDedoNo_kid, ChupoDedoSi_kid, ChupoDedoEdad_kid, SeMuerdeUnasNo_kid, SeMuerdeUnasSi_kid, SeMuerdeLabiosNo_kid, SeMuerdeLabiosSi_kid, CuantasVecesCepillaDientes1_kid, CuantasVecesCepillaDientes2_kid, CuantasVecesCepillaDientes3_kid, CuantasVecesCepillaDientes4_kid, ImportariaUsarAparatoOrtodoncicoNo_kid, ImportariaUsarAparatoOrtodoncicoSi_kid,scrollView;



@synthesize overlayImageView, backgroundImageView, screenshotImage,screenPictureView,screenPictureLabel,screenPictureImageView;


@synthesize messageNombre_kid, messageApellido_Kid;

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"First to second"])
    {
        self.messageNombre_kid = Nombre_Kid.text;
        self.messageApellido_Kid = Apellido_Kid.text;
        FirmaDigital_Kid_ViewController *targetVC = [segue destinationViewController];
        targetVC.messageNombre_kid = self.messageNombre_kid;
        targetVC.messageApellido_Kid = self.messageApellido_Kid;
    }
}





-(IBAction)enviar:(id)sender

{
    
    NSString *enviaStringObservaciones_kid = Observaciones_kid.text;
    NSUserDefaults *defaultsObservaciones_kid = [NSUserDefaults standardUserDefaults];
    [defaultsObservaciones_kid setObject:enviaStringObservaciones_kid forKey:@"enviaStringObservaciones_kid"];
    [defaultsObservaciones_kid synchronize];
    
    NSString *enviaStringFecha_kid = Fecha_kid.text;
    NSUserDefaults *defaultsFecha_kid = [NSUserDefaults standardUserDefaults];
    [defaultsFecha_kid setObject:enviaStringFecha_kid forKey:@"enviaStringFecha_kid"];
    [defaultsFecha_kid synchronize];
    
    NSString *enviaStringNombre_Kid = Nombre_Kid.text;
    NSUserDefaults *defaultsNombre_Kid = [NSUserDefaults standardUserDefaults];
    [defaultsNombre_Kid setObject:enviaStringNombre_Kid forKey:@"enviaStringNombre_Kid"];
    [defaultsNombre_Kid synchronize];
    
    NSString *enviaStringApellido_Kid = Apellido_Kid.text;
    NSUserDefaults *defaultsApellido_Kid = [NSUserDefaults standardUserDefaults];
    [defaultsApellido_Kid setObject:enviaStringApellido_Kid forKey:@"enviaStringApellido_Kid"];
    [defaultsApellido_Kid synchronize];
    
    NSString *enviaStringDireccion_kid = Direccion_kid.text;
    NSUserDefaults *defaultsDireccion_kid = [NSUserDefaults standardUserDefaults];
    [defaultsDireccion_kid setObject:enviaStringDireccion_kid forKey:@"enviaStringDireccion_kid"];
    [defaultsDireccion_kid synchronize];
    
    NSString *enviaStringNumero_kid = Numero_kid.text;
    NSUserDefaults *defaultsNumero_kid = [NSUserDefaults standardUserDefaults];
    [defaultsNumero_kid setObject:enviaStringNumero_kid forKey:@"enviaStringNumero_kid"];
    [defaultsNumero_kid synchronize];
    
    NSString *enviaStringPiso_kid = Piso_kid.text;
    NSUserDefaults *defaultsPiso_kid = [NSUserDefaults standardUserDefaults];
    [defaultsPiso_kid setObject:enviaStringPiso_kid forKey:@"enviaStringPiso_kid"];
    [defaultsPiso_kid synchronize];
    
    NSString *enviaStringFechaNacimiento_kid = FechaNacimiento_kid.text;
    NSUserDefaults *defaultsFechaNacimiento_kid = [NSUserDefaults standardUserDefaults];
    [defaultsFechaNacimiento_kid setObject:enviaStringFechaNacimiento_kid forKey:@"enviaStringFechaNacimiento_kid"];
    [defaultsFechaNacimiento_kid synchronize];
    
    NSString *enviaStringEdad_kid = Edad_kid.text;
    NSUserDefaults *defaultsEdad_kid = [NSUserDefaults standardUserDefaults];
    [defaultsEdad_kid setObject:enviaStringEdad_kid forKey:@"enviaStringEdad_kid"];
    [defaultsEdad_kid synchronize];
    
    NSString *enviaStringLocalidad_kid = Localidad_kid.text;
    NSUserDefaults *defaultsLocalidad_kid = [NSUserDefaults standardUserDefaults];
    [defaultsLocalidad_kid setObject:enviaStringLocalidad_kid forKey:@"enviaStringLocalidad_kid"];
    [defaultsLocalidad_kid synchronize];
    
    NSString *enviaStringCodigoPostal_Kid = CodigoPostal_Kid.text;
    NSUserDefaults *defaultsCodigoPostal_Kid = [NSUserDefaults standardUserDefaults];
    [defaultsCodigoPostal_Kid setObject:enviaStringCodigoPostal_Kid forKey:@"enviaStringCodigoPostal_Kid"];
    [defaultsCodigoPostal_Kid synchronize];
    
    NSString *enviaStringNombrePadre_kid = NombrePadre_kid.text;
    NSUserDefaults *defaultsNombrePadre_kid = [NSUserDefaults standardUserDefaults];
    [defaultsNombrePadre_kid setObject:enviaStringNombrePadre_kid forKey:@"enviaStringNombrePadre_kid"];
    [defaultsNombrePadre_kid synchronize];
    
    NSString *enviaStringNombreMadre_kid = NombreMadre_kid.text;
    NSUserDefaults *defaultsNombreMadre_kid = [NSUserDefaults standardUserDefaults];
    [defaultsNombreMadre_kid setObject:enviaStringNombreMadre_kid forKey:@"enviaStringNombreMadre_kid"];
    [defaultsNombreMadre_kid synchronize];
    
    NSString *enviaStringProfesionPadre_kid = ProfesionPadre_kid.text;
    NSUserDefaults *defaultsProfesionPadre_kid = [NSUserDefaults standardUserDefaults];
    [defaultsProfesionPadre_kid setObject:enviaStringProfesionPadre_kid forKey:@"enviaStringProfesionPadre_kid"];
    [defaultsProfesionPadre_kid synchronize];
    
    NSString *enviaStringProfesionMadre_kid = ProfesionMadre_kid.text;
    NSUserDefaults *defaultsProfesionMadre_kid = [NSUserDefaults standardUserDefaults];
    [defaultsProfesionMadre_kid setObject:enviaStringProfesionMadre_kid forKey:@"enviaStringProfesionMadre_kid"];
    [defaultsProfesionMadre_kid synchronize];
    
    NSString *enviaStringCorreoElectronicoPadre_Kid = CorreoElectronicoPadre_Kid.text;
    NSUserDefaults *defaultsCorreoElectronicoPadre_Kid = [NSUserDefaults standardUserDefaults];
    [defaultsCorreoElectronicoPadre_Kid setObject:enviaStringCorreoElectronicoPadre_Kid forKey:@"enviaStringCorreoElectronicoPadre_Kid"];
    [defaultsCorreoElectronicoPadre_Kid synchronize];
    
    NSString *enviaStringCorreoElectronicoMadre_Kid = CorreoElectronicoMadre_kid.text;
    NSUserDefaults *defaultsCorreoElectronicoMadre_Kid = [NSUserDefaults standardUserDefaults];
    [defaultsCorreoElectronicoMadre_Kid setObject:enviaStringCorreoElectronicoMadre_Kid forKey:@"enviaStringCorreoElectronicoMadre_Kid"];
    [defaultsCorreoElectronicoMadre_Kid synchronize];
    
    NSString *enviaStringMovilPadre_kid = MovilPadre_kid.text;
    NSUserDefaults *defaultsMovilPadre_kid = [NSUserDefaults standardUserDefaults];
    [defaultsMovilPadre_kid setObject:enviaStringMovilPadre_kid forKey:@"enviaStringMovilPadre_kid"];
    [defaultsMovilPadre_kid synchronize];
    
    NSString *enviaStringMovilMadre_kid = MovilMadre_kid.text;
    NSUserDefaults *defaultsMovilMadre_kid = [NSUserDefaults standardUserDefaults];
    [defaultsMovilMadre_kid setObject:enviaStringMovilMadre_kid forKey:@"enviaStringMovilMadre_kid"];
    [defaultsMovilMadre_kid synchronize];
    
    NSString *enviaStringCuantosHermanosTienePaciente_kid = CuantosHermanosTienePaciente_kid.text;
    NSUserDefaults *defaultsCuantosHermanosTienePaciente_kid = [NSUserDefaults standardUserDefaults];
    [defaultsCuantosHermanosTienePaciente_kid setObject:enviaStringCuantosHermanosTienePaciente_kid forKey:@"enviaStringCuantosHermanosTienePaciente_kid"];
    [defaultsCuantosHermanosTienePaciente_kid synchronize];
    
    NSString *enviaStringOtroMiembroEnConsulta_kid = OtroMiembroEnConsulta_kid.text;
    NSUserDefaults *defaultsOtroMiembroEnConsulta_kid = [NSUserDefaults standardUserDefaults];
    [defaultsOtroMiembroEnConsulta_kid setObject:enviaStringOtroMiembroEnConsulta_kid forKey:@"enviaStringOtroMiembroEnConsulta_kid"];
    [defaultsOtroMiembroEnConsulta_kid synchronize];
    
    NSString *enviaStringQuienHaReferidoConsulta_kid = QuienHaReferidoConsulta_kid.text;
    NSUserDefaults *defaultsQuienHaReferidoConsulta_kid = [NSUserDefaults standardUserDefaults];
    [defaultsQuienHaReferidoConsulta_kid setObject:enviaStringQuienHaReferidoConsulta_kid forKey:@"enviaStringQuienHaReferidoConsulta_kid"];
    [defaultsQuienHaReferidoConsulta_kid synchronize];
    
    NSString *enviaStringProblemPrincipalDientes_kid = ProblemPrincipalDientes_kid.text;
    NSUserDefaults *defaultsProblemPrincipalDientes_kid = [NSUserDefaults standardUserDefaults];
    [defaultsProblemPrincipalDientes_kid setObject:enviaStringProblemPrincipalDientes_kid forKey:@"enviaStringProblemPrincipalDientes_kid"];
    [defaultsProblemPrincipalDientes_kid synchronize];
    
    NSString *enviaStringPadeceAlgunTipoDeEnfermedadNo_kid = PadeceAlgunTipoDeEnfermedadNo_kid.text;
    NSUserDefaults *defaultsPadeceAlgunTipoDeEnfermedadNo_kid = [NSUserDefaults standardUserDefaults];
    [defaultsPadeceAlgunTipoDeEnfermedadNo_kid setObject:enviaStringPadeceAlgunTipoDeEnfermedadNo_kid forKey:@"enviaStringPadeceAlgunTipoDeEnfermedadNo_kid"];
    [defaultsPadeceAlgunTipoDeEnfermedadNo_kid synchronize];
    
    NSString *enviaStringPadeceAlgunTipoDeEnfermedadSi_kid = PadeceAlgunTipoDeEnfermedadSi_kid.text;
    NSUserDefaults *defaultsPadeceAlgunTipoDeEnfermedadSi_kid = [NSUserDefaults standardUserDefaults];
    [defaultsPadeceAlgunTipoDeEnfermedadSi_kid setObject:enviaStringPadeceAlgunTipoDeEnfermedadSi_kid forKey:@"enviaStringPadeceAlgunTipoDeEnfermedadSi_kid"];
    [defaultsPadeceAlgunTipoDeEnfermedadSi_kid synchronize];
    
    NSString *enviaStringPadeceAlgunTipoDeEnfermedadCuales_kid = PadeceAlgunTipoDeEnfermedadCuales_kid.text;
    NSUserDefaults *defaultsPadeceAlgunTipoDeEnfermedadCuales_kid = [NSUserDefaults standardUserDefaults];
    [defaultsPadeceAlgunTipoDeEnfermedadCuales_kid setObject:enviaStringPadeceAlgunTipoDeEnfermedadCuales_kid forKey:@"enviaStringPadeceAlgunTipoDeEnfermedadCuales_kid"];
    [defaultsPadeceAlgunTipoDeEnfermedadCuales_kid synchronize];
    
    NSString *enviaStringAlergiaMedicamentosNo_kid = AlergiaMedicamentosNo_kid.text;
    NSUserDefaults *defaultsAlergiaMedicamentosNo_kid = [NSUserDefaults standardUserDefaults];
    [defaultsAlergiaMedicamentosNo_kid setObject:enviaStringAlergiaMedicamentosNo_kid forKey:@"enviaStringAlergiaMedicamentosNo_kid"];
    [defaultsAlergiaMedicamentosNo_kid synchronize];
    
    NSString *enviaStringAlergiaMedicamentosSi_kid = AlergiaMedicamentosSi_kid.text;
    NSUserDefaults *defaultsAlergiaMedicamentosSi_kid = [NSUserDefaults standardUserDefaults];
    [defaultsAlergiaMedicamentosSi_kid setObject:enviaStringAlergiaMedicamentosSi_kid forKey:@"enviaStringAlergiaMedicamentosSi_kid"];
    [defaultsAlergiaMedicamentosSi_kid synchronize];
    
    NSString *enviaStringAlergiaMedicamentosCuales_kid = AlergiaMedicamentosCuales_kid.text;
    NSUserDefaults *defaultsAlergiaMedicamentosCuales_kid = [NSUserDefaults standardUserDefaults];
    [defaultsAlergiaMedicamentosCuales_kid setObject:enviaStringAlergiaMedicamentosCuales_kid forKey:@"enviaStringAlergiaMedicamentosCuales_kid"];
    [defaultsAlergiaMedicamentosCuales_kid synchronize];
    
    NSString *enviaStringTraumatismoCabezaCaraNo_kid = TraumatismoCabezaCaraNo_kid.text;
    NSUserDefaults *defaultsTraumatismoCabezaCaraNo_kid = [NSUserDefaults standardUserDefaults];
    [defaultsTraumatismoCabezaCaraNo_kid setObject:enviaStringTraumatismoCabezaCaraNo_kid forKey:@"enviaStringTraumatismoCabezaCaraNo_kid"];
    [defaultsTraumatismoCabezaCaraNo_kid synchronize];
    
    NSString *enviaStringTraumatismoCabezaCaraSi_kid = TraumatismoCabezaCaraSi_kid.text;
    NSUserDefaults *defaultsTraumatismoCabezaCaraSi_kid = [NSUserDefaults standardUserDefaults];
    [defaultsTraumatismoCabezaCaraSi_kid setObject:enviaStringTraumatismoCabezaCaraSi_kid forKey:@"enviaStringTraumatismoCabezaCaraNo_kid"];
    [defaultsTraumatismoCabezaCaraSi_kid synchronize];
    
    NSString *enviaStringTraumatismoCabezaCaraCuales_kid = TraumatismoCabezaCaraCuales_kid.text;
    NSUserDefaults *defaultsTraumatismoCabezaCaraCuales_kid = [NSUserDefaults standardUserDefaults];
    [defaultsTraumatismoCabezaCaraCuales_kid setObject:enviaStringTraumatismoCabezaCaraCuales_kid forKey:@"enviaStringTraumatismoCabezaCaraNo_kid"];
    [defaultsTraumatismoCabezaCaraCuales_kid synchronize];
    
    NSString *enviaStringMedicacionUtilizada_kid = MedicacionUtilizada_kid.text;
    NSUserDefaults *defaultsMedicacionUtilizada_kid = [NSUserDefaults standardUserDefaults];
    [defaultsMedicacionUtilizada_kid setObject:enviaStringMedicacionUtilizada_kid forKey:@"enviaStringMedicacionUtilizada_kid"];
    [defaultsMedicacionUtilizada_kid synchronize];
    
    NSString *enviaStringRoncaCuandoDuermeNo_kid = RoncaCuandoDuermeNo_Kid.text;
    NSUserDefaults *defaultsRoncaCuandoDuermeNo_kid = [NSUserDefaults standardUserDefaults];
    [defaultsRoncaCuandoDuermeNo_kid setObject:enviaStringRoncaCuandoDuermeNo_kid forKey:@"enviaStringRoncaCuandoDuermeNo_kid"];
    [defaultsRoncaCuandoDuermeNo_kid synchronize];
    
    NSString *enviaStringRoncaCuandoDuermeSi_kid = RoncaCuandoDuermeSi_Kid.text;
    NSUserDefaults *defaultsRoncaCuandoDuermeSi_kid = [NSUserDefaults standardUserDefaults];
    [defaultsRoncaCuandoDuermeSi_kid setObject:enviaStringRoncaCuandoDuermeSi_kid forKey:@"enviaStringRoncaCuandoDuermeSi_kid"];
    [defaultsRoncaCuandoDuermeSi_kid synchronize];
    
    NSString *enviaStringRespiraPorBocaSiempre_kid = RespiraPorBocaSiempre_kid.text;
    NSUserDefaults *defaultsRespiraPorBocaSiempre_kid = [NSUserDefaults standardUserDefaults];
    [defaultsRespiraPorBocaSiempre_kid setObject:enviaStringRespiraPorBocaSiempre_kid forKey:@"enviaStringRespiraPorBocaSiempre_kid"];
    [defaultsRespiraPorBocaSiempre_kid synchronize];
    
    NSString *enviaStringRespiraPorBocaAlgunasVeces_kid = RespiraPorBocaAlgunasVeces_kid.text;
    NSUserDefaults *defaultsRespiraPorBocaAlgunasVeces_kid = [NSUserDefaults standardUserDefaults];
    [defaultsRespiraPorBocaAlgunasVeces_kid setObject:enviaStringRespiraPorBocaAlgunasVeces_kid forKey:@"enviaStringRespiraPorBocaAlgunasVeces_kid"];
    [defaultsRespiraPorBocaAlgunasVeces_kid synchronize];
    
    NSString *enviaStringRespiraPorBocaNunca_kid = RespiraPorBocaNunca_kid.text;
    NSUserDefaults *defaultsRespiraPorBocaNunca_kid = [NSUserDefaults standardUserDefaults];
    [defaultsRespiraPorBocaNunca_kid setObject:enviaStringRespiraPorBocaNunca_kid forKey:@"enviaStringRespiraPorBocaNunca_kid"];
    [defaultsRespiraPorBocaNunca_kid synchronize];
    
    NSString *enviaStringTieneTendenciaGripaNo_kid = TieneTendenciaGripaNo_kid.text;
    NSUserDefaults *defaultsTieneTendenciaGripaNo_kid = [NSUserDefaults standardUserDefaults];
    [defaultsTieneTendenciaGripaNo_kid setObject:enviaStringTieneTendenciaGripaNo_kid forKey:@"enviaStringTieneTendenciaGripaNo_kid"];
    [defaultsTieneTendenciaGripaNo_kid synchronize];
    
    NSString *enviaStringTieneTendenciaGripaSi_kid = TieneTendenciaGripaSi_kid.text;
    NSUserDefaults *defaultsTieneTendenciaGripaSi_kid = [NSUserDefaults standardUserDefaults];
    [defaultsTieneTendenciaGripaSi_kid setObject:enviaStringTieneTendenciaGripaSi_kid forKey:@"enviaStringTieneTendenciaGripaSi_kid"];
    [defaultsTieneTendenciaGripaSi_kid synchronize];
    
    NSString *enviaStringTratamientoOrtodoncicoNo_kid = TratamientoOrtodoncicoNo_kid.text;
    NSUserDefaults *defaultsTratamientoOrtodoncicoNo_kid = [NSUserDefaults standardUserDefaults];
    [defaultsTratamientoOrtodoncicoNo_kid setObject:enviaStringTratamientoOrtodoncicoNo_kid forKey:@"enviaStringTratamientoOrtodoncicoNo_kid"];
    [defaultsTratamientoOrtodoncicoNo_kid synchronize];
    
    NSString *enviaStringTratamientoOrtodoncicoSi_kid = TratamientoOrtodoncicoSi_kid.text;
    NSUserDefaults *defaultsTratamientoOrtodoncicoSi_kid = [NSUserDefaults standardUserDefaults];
    [defaultsTratamientoOrtodoncicoSi_kid setObject:enviaStringTratamientoOrtodoncicoSi_kid forKey:@"enviaStringTratamientoOrtodoncicoSi_kid"];
    [defaultsTratamientoOrtodoncicoSi_kid synchronize];
    
    NSString *enviaStringTratamientoOrtodoncicoEdad_kid = TratamientoOrtodoncicoEdad_kid.text;
    NSUserDefaults *defaultsTratamientoOrtodoncicoEdad_kid = [NSUserDefaults standardUserDefaults];
    [defaultsTratamientoOrtodoncicoEdad_kid setObject:enviaStringTratamientoOrtodoncicoEdad_kid forKey:@"enviaStringTratamientoOrtodoncicoEdad_kid"];
    [defaultsTratamientoOrtodoncicoEdad_kid synchronize];
    
    NSString *enviaStringOperadoDeAmigdalasVegetacionesNo_kid = OperadoDeAmigdalasVegetacionesNo_kid.text;
    NSUserDefaults *defaultsOperadoDeAmigdalasVegetacionesNo_kid = [NSUserDefaults standardUserDefaults];
    [defaultsOperadoDeAmigdalasVegetacionesNo_kid setObject:enviaStringOperadoDeAmigdalasVegetacionesNo_kid forKey:@"enviaStringOperadoDeAmigdalasVegetacionesNo_kid"];
    [defaultsOperadoDeAmigdalasVegetacionesNo_kid synchronize];
    
    NSString *enviaStringOperadoDeAmigdalasVegetacionesSi_kid = OperadoDeAmigdalasVegetacionesSi_kid.text;
    NSUserDefaults *defaultsOperadoDeAmigdalasVegetacionesSi_kid = [NSUserDefaults standardUserDefaults];
    [defaultsOperadoDeAmigdalasVegetacionesSi_kid setObject:enviaStringOperadoDeAmigdalasVegetacionesSi_kid forKey:@"enviaStringOperadoDeAmigdalasVegetacionesSi_kid"];
    [defaultsOperadoDeAmigdalasVegetacionesSi_kid synchronize];
    
    NSString *enviaStringOperadoDeAmigdalasVegetacionesEdad_kid = OperadoDeAmigdalasVegetacionesEdad_kid.text;
    NSUserDefaults *defaultsOperadoDeAmigdalasVegetacionesEdad_kid = [NSUserDefaults standardUserDefaults];
    [defaultsOperadoDeAmigdalasVegetacionesEdad_kid setObject:enviaStringOperadoDeAmigdalasVegetacionesEdad_kid forKey:@"enviaStringOperadoDeAmigdalasVegetacionesEdad_kid"];
    [defaultsOperadoDeAmigdalasVegetacionesEdad_kid synchronize];
    
    NSString *enviaStringUsoChupeteNo_kid = UsoChupeteNo_kid.text;
    NSUserDefaults *defaultsUsoChupeteNo_kid = [NSUserDefaults standardUserDefaults];
    [defaultsUsoChupeteNo_kid setObject:enviaStringUsoChupeteNo_kid forKey:@"enviaStringUsoChupeteNo_kid"];
    [defaultsUsoChupeteNo_kid synchronize];
    
    NSString *enviaStringUsoChupeteSi_kid = UsoChupeteSi_kid.text;
    NSUserDefaults *defaultsUsoChupeteSi_kid = [NSUserDefaults standardUserDefaults];
    [defaultsUsoChupeteSi_kid setObject:enviaStringUsoChupeteSi_kid forKey:@"enviaStringUsoChupeteSi_kid"];
    [defaultsUsoChupeteSi_kid synchronize];
    
    NSString *enviaStringUsoChupeteEdad_kid = UsoChupeteEdad_kid.text;
    NSUserDefaults *defaultsUsoChupeteEdad_kid = [NSUserDefaults standardUserDefaults];
    [defaultsUsoChupeteEdad_kid setObject:enviaStringUsoChupeteEdad_kid forKey:@"enviaStringUsoChupeteEdad_kid"];
    [defaultsUsoChupeteEdad_kid synchronize];
    
    NSString *enviaStringChupoDedoNo_kid = ChupoDedoNo_kid.text;
    NSUserDefaults *defaultsChupoDedoNo_kid = [NSUserDefaults standardUserDefaults];
    [defaultsChupoDedoNo_kid setObject:enviaStringChupoDedoNo_kid forKey:@"enviaStringChupoDedoNo_kid"];
    [defaultsChupoDedoNo_kid synchronize];
    
    NSString *enviaStringChupoDedoSi_kid = ChupoDedoSi_kid.text;
    NSUserDefaults *defaultsChupoDedoSi_kid = [NSUserDefaults standardUserDefaults];
    [defaultsChupoDedoSi_kid setObject:enviaStringChupoDedoSi_kid forKey:@"enviaStringChupoDedoSi_kid"];
    [defaultsChupoDedoSi_kid synchronize];
    
    NSString *enviaStringChupoDedoEdad_kid = ChupoDedoEdad_kid.text;
    NSUserDefaults *defaultsChupoDedoEdad_kid = [NSUserDefaults standardUserDefaults];
    [defaultsChupoDedoEdad_kid setObject:enviaStringChupoDedoEdad_kid forKey:@"enviaStringChupoDedoEdad_kid"];
    [defaultsChupoDedoEdad_kid synchronize];
    
    NSString *enviaStringSeMuerdeUnasNo_kid = SeMuerdeUnasNo_kid.text;
    NSUserDefaults *defaultsSeMuerdeUnasNo_kid = [NSUserDefaults standardUserDefaults];
    [defaultsSeMuerdeUnasNo_kid setObject:enviaStringSeMuerdeUnasNo_kid forKey:@"enviaStringSeMuerdeUnasNo_kid"];
    [defaultsSeMuerdeUnasNo_kid synchronize];
    
    NSString *enviaStringSeMuerdeUnasSi_kid = SeMuerdeUnasSi_kid.text;
    NSUserDefaults *defaultsSeMuerdeUnasSi_kid = [NSUserDefaults standardUserDefaults];
    [defaultsSeMuerdeUnasSi_kid setObject:enviaStringSeMuerdeUnasSi_kid forKey:@"enviaStringSeMuerdeUnasSi_kid"];
    [defaultsSeMuerdeUnasSi_kid synchronize];
    
    NSString *enviaStringSeMuerdeLabiosNo_kid = SeMuerdeLabiosNo_kid.text;
    NSUserDefaults *defaultsSeMuerdeLabiosNo_kid = [NSUserDefaults standardUserDefaults];
    [defaultsSeMuerdeLabiosNo_kid setObject:enviaStringSeMuerdeLabiosNo_kid forKey:@"enviaStringSeMuerdeLabiosNo_kid"];
    [defaultsSeMuerdeLabiosNo_kid synchronize];
    
    NSString *enviaStringSeMuerdeLabiosSi_kid = SeMuerdeLabiosSi_kid.text;
    NSUserDefaults *defaultsSeMuerdeLabiosSi_kid = [NSUserDefaults standardUserDefaults];
    [defaultsSeMuerdeLabiosSi_kid setObject:enviaStringSeMuerdeLabiosSi_kid forKey:@"enviaStringSeMuerdeLabiosSi_kid"];
    [defaultsSeMuerdeLabiosSi_kid synchronize];
    
    NSString *enviaStringCuantasVecesCepillaDientes1_kid = CuantasVecesCepillaDientes1_kid.text;
    NSUserDefaults *defaultsCuantasVecesCepillaDientes1_kid = [NSUserDefaults standardUserDefaults];
    [defaultsCuantasVecesCepillaDientes1_kid setObject:enviaStringCuantasVecesCepillaDientes1_kid forKey:@"enviaStringCuantasVecesCepillaDientes1_kid"];
    [defaultsCuantasVecesCepillaDientes1_kid synchronize];
    
    NSString *enviaStringCuantasVecesCepillaDientes2_kid = CuantasVecesCepillaDientes2_kid.text;
    NSUserDefaults *defaultsCuantasVecesCepillaDientes2_kid = [NSUserDefaults standardUserDefaults];
    [defaultsCuantasVecesCepillaDientes2_kid setObject:enviaStringCuantasVecesCepillaDientes2_kid forKey:@"enviaStringCuantasVecesCepillaDientes2_kid"];
    [defaultsCuantasVecesCepillaDientes2_kid synchronize];
    
    NSString *enviaStringCuantasVecesCepillaDientes3_kid = CuantasVecesCepillaDientes3_kid.text;
    NSUserDefaults *defaultsCuantasVecesCepillaDientes3_kid = [NSUserDefaults standardUserDefaults];
    [defaultsCuantasVecesCepillaDientes3_kid setObject:enviaStringCuantasVecesCepillaDientes3_kid forKey:@"enviaStringCuantasVecesCepillaDientes3_kid"];
    [defaultsCuantasVecesCepillaDientes3_kid synchronize];
    
    NSString *enviaStringCuantasVecesCepillaDientes4_kid = CuantasVecesCepillaDientes4_kid.text;
    NSUserDefaults *defaultsCuantasVecesCepillaDientes4_kid = [NSUserDefaults standardUserDefaults];
    [defaultsCuantasVecesCepillaDientes4_kid setObject:enviaStringCuantasVecesCepillaDientes4_kid forKey:@"enviaStringCuantasVecesCepillaDientes4_kid"];
    [defaultsCuantasVecesCepillaDientes4_kid synchronize];
    
    NSString *enviaStringImportariaUsarAparatoOrtodoncicoNo_kid = ImportariaUsarAparatoOrtodoncicoNo_kid.text;
    NSUserDefaults *defaultsImportariaUsarAparatoOrtodoncicoNo_kid = [NSUserDefaults standardUserDefaults];
    [defaultsImportariaUsarAparatoOrtodoncicoNo_kid setObject:enviaStringImportariaUsarAparatoOrtodoncicoNo_kid forKey:@"enviaStringImportariaUsarAparatoOrtodoncicoNo_kid"];
    [defaultsImportariaUsarAparatoOrtodoncicoNo_kid synchronize];
    
    NSString *enviaStringImportariaUsarAparatoOrtodoncicoSi_kid = ImportariaUsarAparatoOrtodoncicoSi_kid.text;
    NSUserDefaults *defaultsImportariaUsarAparatoOrtodoncicoSi_kid = [NSUserDefaults standardUserDefaults];
    [defaultsImportariaUsarAparatoOrtodoncicoSi_kid setObject:enviaStringImportariaUsarAparatoOrtodoncicoSi_kid forKey:@"enviaStringImportariaUsarAparatoOrtodoncicoSi_kid"];
    [defaultsImportariaUsarAparatoOrtodoncicoSi_kid synchronize];
    
    /*
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Atención!"
                                                    message:@"Por favor continúe con el proceso"
                                                   delegate:nil
                                          cancelButtonTitle:nil
                                          otherButtonTitles:@"Gracias!", nil];
    
    [alert show];*/
}


-(IBAction)cargarInformacion:(id)sender
{
    NSUserDefaults *defaultsObservaciones_kid = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringObservaciones_kid = [defaultsObservaciones_kid objectForKey:@"enviaStringObservaciones_kid"];
    [Observaciones_kid setText:cargaStringObservaciones_kid];
    
    NSUserDefaults *defaultsFecha_kid =[NSUserDefaults standardUserDefaults];
    NSString *cargaStringFecha_kid = [defaultsFecha_kid objectForKey:@"enviaStringFecha_kid"];
    [Fecha_kid setText:cargaStringFecha_kid];
    
    NSUserDefaults *defaultsNombre_Kid = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringNombre_Kid = [defaultsNombre_Kid objectForKey:@"enviaStringNombre_Kid"];
    [Nombre_Kid setText:cargaStringNombre_Kid];
    
    NSUserDefaults *defaultsApellido_Kid = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringApellido_Kid = [defaultsApellido_Kid objectForKey:@"enviaStringApellido_Kid"];
    [Apellido_Kid setText:cargaStringApellido_Kid];
    
    NSUserDefaults *defaultsDireccion_kid = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringDireccion_kid = [defaultsDireccion_kid objectForKey:@"enviaStringDireccion_kid"];
    [Direccion_kid setText:cargaStringDireccion_kid];
    
    NSUserDefaults *defaultsNumero_kid = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringNumero_kid = [defaultsNumero_kid objectForKey:@"enviaStringNumero_kid"];
    [Numero_kid setText:cargaStringNumero_kid];
    
    NSUserDefaults *defaultsPiso_kid = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringPiso_kid = [defaultsPiso_kid objectForKey:@"enviaStringPiso_kid"];
    [Piso_kid setText:cargaStringPiso_kid];
    
    NSUserDefaults *defaultsFechaNacimiento_kid = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringFechaNacimiento_kid = [defaultsFechaNacimiento_kid objectForKey:@"enviaStringFechaNacimiento_kid"];
    [FechaNacimiento_kid setText:cargaStringFechaNacimiento_kid];
    
    NSUserDefaults *defaultsEdad_kid = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringEdad_kid = [defaultsEdad_kid objectForKey:@"enviaStringEdad_kid"];
    [Edad_kid setText:cargaStringEdad_kid];
    
    NSUserDefaults *defaultsLocalidad_kid = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringLocalidad_kid = [defaultsLocalidad_kid objectForKey:@"enviaStringLocalidad_kid"];
    [Localidad_kid setText:cargaStringLocalidad_kid];
    
    NSUserDefaults *defaultsCodigoPostal_Kid = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringCodigoPostal_Kid = [defaultsCodigoPostal_Kid objectForKey:@"enviaStringCodigoPostal_Kid"];
    [CodigoPostal_Kid setText:cargaStringCodigoPostal_Kid];
    
    NSUserDefaults *defaultsNombrePadre_kid = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringNombrePadre_kid = [defaultsNombrePadre_kid objectForKey:@"enviaStringNombrePadre_kid"];
    [NombrePadre_kid setText:cargaStringNombrePadre_kid];
    
    NSUserDefaults *defaultsNombreMadre_kid = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringNombreMadre_kid = [defaultsNombreMadre_kid objectForKey:@"enviaStringNombreMadre_kid"];
    [NombreMadre_kid setText:cargaStringNombreMadre_kid];
    
    NSUserDefaults *defaultsProfesionPadre_kid = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringProfesionPadre_kid = [defaultsProfesionPadre_kid objectForKey:@"enviaStringProfesionPadre_kid"];
    [ProfesionPadre_kid setText:cargaStringProfesionPadre_kid];
    
    NSUserDefaults *defaultsProfesionMadre_kid = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringProfesionMadre_kid = [defaultsProfesionMadre_kid objectForKey:@"enviaStringProfesionMadre_kid"];
    [ProfesionMadre_kid setText:cargaStringProfesionMadre_kid];
    
    NSUserDefaults *defaultsCorreoElectronicoPadre_Kid = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringCorreoElectronicoPadre_Kid = [defaultsCorreoElectronicoPadre_Kid objectForKey:@"enviaStringCorreoElectronicoPadre_Kid"];
    [CorreoElectronicoPadre_Kid setText:cargaStringCorreoElectronicoPadre_Kid];
    
    NSUserDefaults *defaultsCorreoElectronicoMadre_kid = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringCorreoElectronicoMadre_kid = [defaultsCorreoElectronicoMadre_kid objectForKey:@"enviaStringCorreoElectronicoMadre_kid"];
    [CorreoElectronicoMadre_kid setText:cargaStringCorreoElectronicoMadre_kid];
    
    NSUserDefaults *defaultsMovilPadre_kid = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringMovilPadre_kid = [defaultsMovilPadre_kid objectForKey:@"enviaStringMovilPadre_kid"];
    [MovilPadre_kid setText:cargaStringMovilPadre_kid];
    
    NSUserDefaults *defaultsMovilMadre_kid = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringMovilMadre_kid = [defaultsMovilMadre_kid objectForKey:@"enviaStringMovilMadre_kid"];
    [MovilMadre_kid setText:cargaStringMovilMadre_kid];
    
    NSUserDefaults *defaultsCuantosHermanosTienePaciente_kid = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringCuantosHermanosTienePaciente_kid = [defaultsCuantosHermanosTienePaciente_kid objectForKey:@"enviaStringCuantosHermanosTienePaciente_kid"];
    [CuantosHermanosTienePaciente_kid setText:cargaStringCuantosHermanosTienePaciente_kid];
    
    NSUserDefaults *defaultsOtroMiembroEnConsulta_kid = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringOtroMiembroEnConsulta_kid = [defaultsOtroMiembroEnConsulta_kid objectForKey:@"enviaStringOtroMiembroEnConsulta_kid"];
    [OtroMiembroEnConsulta_kid setText:cargaStringOtroMiembroEnConsulta_kid];
    
    NSUserDefaults *defaultsQuienHaReferidoConsulta_kid = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringQuienHaReferidoConsulta_kid = [defaultsQuienHaReferidoConsulta_kid objectForKey:@"enviaStringQuienHaReferidoConsulta_kid"];
    [QuienHaReferidoConsulta_kid setText:cargaStringQuienHaReferidoConsulta_kid];
    
    NSUserDefaults *defaultsProblemPrincipalDientes_kid = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringProblemPrincipalDientes_kid = [defaultsProblemPrincipalDientes_kid objectForKey:@"enviaStringProblemPrincipalDientes_kid"];
    [ProblemPrincipalDientes_kid setText:cargaStringProblemPrincipalDientes_kid];
    
    NSUserDefaults *defaultsPadeceAlgunTipoDeEnfermedadNo_kid = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringPadeceAlgunTipoDeEnfermedadNo_kid = [defaultsPadeceAlgunTipoDeEnfermedadNo_kid objectForKey:@"enviaStringPadeceAlgunTipoDeEnfermedadNo_kid"];
    [PadeceAlgunTipoDeEnfermedadNo_kid setText:cargaStringPadeceAlgunTipoDeEnfermedadNo_kid];
    
    NSUserDefaults *defaultsPadeceAlgunTipoDeEnfermedadSi_kid = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringPadeceAlgunTipoDeEnfermedadSi_kid = [defaultsPadeceAlgunTipoDeEnfermedadSi_kid objectForKey:@"enviaStringPadeceAlgunTipoDeEnfermedadSi_kid"];
    [PadeceAlgunTipoDeEnfermedadSi_kid setText:cargaStringPadeceAlgunTipoDeEnfermedadSi_kid];
    
    NSUserDefaults *defaultsPadeceAlgunTipoDeEnfermedadCuales_kid = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringPadeceAlgunTipoDeEnfermedadCuales_kid = [defaultsPadeceAlgunTipoDeEnfermedadCuales_kid objectForKey:@"enviaStringPadeceAlgunTipoDeEnfermedadCuales_kid"];
    [PadeceAlgunTipoDeEnfermedadCuales_kid setText:cargaStringPadeceAlgunTipoDeEnfermedadCuales_kid];
    
    NSUserDefaults *defaultsAlergiaMedicamentosNo_kid = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringAlergiaMedicamentosNo_kid = [defaultsAlergiaMedicamentosNo_kid objectForKey:@"enviaStringAlergiaMedicamentosNo_kid"];
    [AlergiaMedicamentosNo_kid setText:cargaStringAlergiaMedicamentosNo_kid];
    
    NSUserDefaults *defaultsAlergiaMedicamentosSi_kid = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringAlergiaMedicamentosSi_kid = [defaultsAlergiaMedicamentosSi_kid objectForKey:@"enviaStringAlergiaMedicamentosSi_kid"];
    [AlergiaMedicamentosSi_kid setText:cargaStringAlergiaMedicamentosSi_kid];
    
    NSUserDefaults *defaultsAlergiaMedicamentosCuales_kid = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringAlergiaMedicamentosCuales_kid = [defaultsAlergiaMedicamentosCuales_kid objectForKey:@"enviaStringAlergiaMedicamentosCuales_kid"];
    [AlergiaMedicamentosCuales_kid setText:cargaStringAlergiaMedicamentosCuales_kid];
    
    NSUserDefaults *defaultsTraumatismoCabezaCaraNo_kid = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringTraumatismoCabezaCaraNo_kid = [defaultsTraumatismoCabezaCaraNo_kid objectForKey:@"enviaStringTraumatismoCabezaCaraNo_kid"];
    [TraumatismoCabezaCaraNo_kid setText:cargaStringTraumatismoCabezaCaraNo_kid];
    
    NSUserDefaults *defaultsTraumatismoCabezaCaraSi_kid = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringTraumatismoCabezaCaraSi_kid = [defaultsTraumatismoCabezaCaraSi_kid objectForKey:@"enviaStringTraumatismoCabezaCaraSi_kid"];
    [TraumatismoCabezaCaraSi_kid setText:cargaStringTraumatismoCabezaCaraSi_kid];
    
    NSUserDefaults *defaultsTraumatismoCabezaCaraCuales_kid = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringTraumatismoCabezaCaraCuales_kid = [defaultsTraumatismoCabezaCaraCuales_kid objectForKey:@"enviaStringTraumatismoCabezaCaraCuales_kid"];
    [TraumatismoCabezaCaraCuales_kid setText:cargaStringTraumatismoCabezaCaraCuales_kid];
    
    NSUserDefaults *defaultsMedicacionUtilizada_kid = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringMedicacionUtilizada_kid = [defaultsMedicacionUtilizada_kid objectForKey:@"enviaStringMedicacionUtilizada_kid"];
    [MedicacionUtilizada_kid setText:cargaStringMedicacionUtilizada_kid];
    
    NSUserDefaults *defaultsRoncaCuandoDuermeNo_Kid = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringRoncaCuandoDuermeNo_Kid = [defaultsRoncaCuandoDuermeNo_Kid objectForKey:@"enviaStringRoncaCuandoDuermeNo_Kid"];
    [RoncaCuandoDuermeNo_Kid setText:cargaStringRoncaCuandoDuermeNo_Kid];
    
    NSUserDefaults *defaultsRoncaCuandoDuermeSi_Kid = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringRoncaCuandoDuermeSi_Kid = [defaultsRoncaCuandoDuermeSi_Kid objectForKey:@"enviaStringRoncaCuandoDuermeSi_Kid"];
    [RoncaCuandoDuermeSi_Kid setText:cargaStringRoncaCuandoDuermeSi_Kid];
    
    NSUserDefaults *defaultsRespiraPorBocaSiempre_kid = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringRespiraPorBocaSiempre_kid = [defaultsRespiraPorBocaSiempre_kid objectForKey:@"enviaStringRespiraPorBocaSiempre_kid"];
    [RespiraPorBocaSiempre_kid setText:cargaStringRespiraPorBocaSiempre_kid];
    
    NSUserDefaults *defaultsRespiraPorBocaAlgunasVeces_kid = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringRespiraPorBocaAlgunasVeces_kid = [defaultsRespiraPorBocaAlgunasVeces_kid objectForKey:@"enviaStringRespiraPorBocaAlgunasVeces_kid"];
    [RespiraPorBocaAlgunasVeces_kid setText:cargaStringRespiraPorBocaAlgunasVeces_kid];
    
    NSUserDefaults *defaultsRespiraPorBocaNunca_kid = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringRespiraPorBocaNunca_kid = [defaultsRespiraPorBocaNunca_kid objectForKey:@"enviaStringRespiraPorBocaNunca_kid"];
    [RespiraPorBocaNunca_kid setText:cargaStringRespiraPorBocaNunca_kid];
    
    NSUserDefaults *defaultsTieneTendenciaGripaNo_kid = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringTieneTendenciaGripaNo_kid = [defaultsTieneTendenciaGripaNo_kid objectForKey:@"enviaStringTieneTendenciaGripaNo_kid"];
    [TieneTendenciaGripaNo_kid setText:cargaStringTieneTendenciaGripaNo_kid];
    
    NSUserDefaults *defaultsTieneTendenciaGripaSi_kid = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringTieneTendenciaGripaSi_kid = [defaultsTieneTendenciaGripaSi_kid objectForKey:@"enviaStringTieneTendenciaGripaSi_kid"];
    [TieneTendenciaGripaSi_kid setText:cargaStringTieneTendenciaGripaSi_kid];
    
    NSUserDefaults *defaultsTratamientoOrtodoncicoNo_kid = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringTratamientoOrtodoncicoNo_kid = [defaultsTratamientoOrtodoncicoNo_kid objectForKey:@"enviaStringTratamientoOrtodoncicoNo_kid"];
    [TratamientoOrtodoncicoNo_kid setText:cargaStringTratamientoOrtodoncicoNo_kid];
    
    NSUserDefaults *defaultsTratamientoOrtodoncicoSi_kid = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringTratamientoOrtodoncicoSi_kid = [defaultsTratamientoOrtodoncicoSi_kid objectForKey:@"enviaStringTratamientoOrtodoncicoSi_kid"];
    [TratamientoOrtodoncicoSi_kid setText:cargaStringTratamientoOrtodoncicoSi_kid];
    
    NSUserDefaults *defaultsTratamientoOrtodoncicoEdad_kid = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringTratamientoOrtodoncicoEdad_kid = [defaultsTratamientoOrtodoncicoEdad_kid objectForKey:@"enviaStringTratamientoOrtodoncicoEdad_kid"];
    [TratamientoOrtodoncicoEdad_kid setText:cargaStringTratamientoOrtodoncicoEdad_kid];
    
    NSUserDefaults *defaultsOperadoDeAmigdalasVegetacionesNo_kid = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringOperadoDeAmigdalasVegetacionesNo_kid = [defaultsOperadoDeAmigdalasVegetacionesNo_kid objectForKey:@"enviaStringOperadoDeAmigdalasVegetacionesNo_kid"];
    [OperadoDeAmigdalasVegetacionesNo_kid setText:cargaStringOperadoDeAmigdalasVegetacionesNo_kid];
    
    NSUserDefaults *defaultsOperadoDeAmigdalasVegetacionesSi_kid = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringOperadoDeAmigdalasVegetacionesSi_kid = [defaultsOperadoDeAmigdalasVegetacionesSi_kid objectForKey:@"enviaStringOperadoDeAmigdalasVegetacionesSi_kid"];
    [OperadoDeAmigdalasVegetacionesSi_kid setText:cargaStringOperadoDeAmigdalasVegetacionesSi_kid];
    
    NSUserDefaults *defaultsOperadoDeAmigdalasVegetacionesEdad_kid = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringOperadoDeAmigdalasVegetacionesEdad_kid = [defaultsOperadoDeAmigdalasVegetacionesEdad_kid objectForKey:@"enviaStringOperadoDeAmigdalasVegetacionesEdad_kid"];
    [OperadoDeAmigdalasVegetacionesEdad_kid setText:cargaStringOperadoDeAmigdalasVegetacionesEdad_kid];
    
    NSUserDefaults *defaultsUsoChupeteNo_kid = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringUsoChupeteNo_kid = [defaultsUsoChupeteNo_kid objectForKey:@"enviaStringUsoChupeteNo_kid"];
    [UsoChupeteNo_kid setText:cargaStringUsoChupeteNo_kid];
    
    NSUserDefaults *defaultsUsoChupeteSi_kid = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringUsoChupeteSi_kid = [defaultsUsoChupeteSi_kid objectForKey:@"enviaStringUsoChupeteSi_kid"];
    [UsoChupeteSi_kid setText:cargaStringUsoChupeteSi_kid];
    
    NSUserDefaults *defaultsUsoChupeteEdad_kid = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringUsoChupeteEdad_kid = [defaultsUsoChupeteEdad_kid objectForKey:@"enviaStringUsoChupeteEdad_kid"];
    [UsoChupeteEdad_kid setText:cargaStringUsoChupeteEdad_kid];
    
    NSUserDefaults *defaultsChupoDedoNo_kid = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringChupoDedoNo_kid = [defaultsChupoDedoNo_kid objectForKey:@"enviaStringChupoDedoNo_kid"];
    [ChupoDedoNo_kid setText:cargaStringChupoDedoNo_kid];
    
    NSUserDefaults *defaultsChupoDedoSi_kid = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringChupoDedoSi_kid = [defaultsChupoDedoSi_kid objectForKey:@"enviaStringChupoDedoSi_kid"];
    [ChupoDedoSi_kid setText:cargaStringChupoDedoSi_kid];
    
    NSUserDefaults *defaultsChupoDedoEdad_kid = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringChupoDedoEdad_kid = [defaultsChupoDedoEdad_kid objectForKey:@"enviaStringChupoDedoEdad_kid"];
    [ChupoDedoEdad_kid setText:cargaStringChupoDedoEdad_kid];
    
    NSUserDefaults *defaultsSeMuerdeUnasNo_kid = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringSeMuerdeUnasNo_kid = [defaultsSeMuerdeUnasNo_kid objectForKey:@"enviaStringSeMuerdeUnasNo_kid"];
    [SeMuerdeUnasNo_kid setText:cargaStringSeMuerdeUnasNo_kid];
    
    NSUserDefaults *defaultsSeMuerdeUnasSi_kid = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringSeMuerdeUnasSi_kid = [defaultsSeMuerdeUnasSi_kid objectForKey:@"enviaStringSeMuerdeUnasSi_kid"];
    [SeMuerdeUnasSi_kid setText:cargaStringSeMuerdeUnasSi_kid];
    
    NSUserDefaults *defaultsSeMuerdeLabiosNo_kid = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringSeMuerdeLabiosNo_kid = [defaultsSeMuerdeLabiosNo_kid objectForKey:@"enviaStringSeMuerdeLabiosNo_kid"];
    [SeMuerdeLabiosNo_kid setText:cargaStringSeMuerdeLabiosNo_kid];
    
    NSUserDefaults *defaultsSeMuerdeLabiosSi_kid = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringSeMuerdeLabiosSi_kid = [defaultsSeMuerdeLabiosSi_kid objectForKey:@"enviaStringSeMuerdeLabiosSi_kid"];
    [SeMuerdeLabiosSi_kid setText:cargaStringSeMuerdeLabiosSi_kid];
    
    NSUserDefaults *defaultsCuantasVecesCepillaDientes1_kid = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringCuantasVecesCepillaDientes1_kid = [defaultsCuantasVecesCepillaDientes1_kid objectForKey:@"enviaStringCuantasVecesCepillaDientes1_kid"];
    [CuantasVecesCepillaDientes1_kid setText:cargaStringCuantasVecesCepillaDientes1_kid];
    
    NSUserDefaults *defaultsCuantasVecesCepillaDientes2_kid = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringCuantasVecesCepillaDientes2_kid = [defaultsCuantasVecesCepillaDientes2_kid objectForKey:@"enviaStringCuantasVecesCepillaDientes2_kid"];
    [CuantasVecesCepillaDientes2_kid setText:cargaStringCuantasVecesCepillaDientes2_kid];
    
    NSUserDefaults *defaultsCuantasVecesCepillaDientes3_kid = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringCuantasVecesCepillaDientes3_kid = [defaultsCuantasVecesCepillaDientes3_kid objectForKey:@"enviaStringCuantasVecesCepillaDientes3_kid"];
    [CuantasVecesCepillaDientes3_kid setText:cargaStringCuantasVecesCepillaDientes3_kid];
    
    NSUserDefaults *defaultsCuantasVecesCepillaDientes4_kid = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringCuantasVecesCepillaDientes4_kid = [defaultsCuantasVecesCepillaDientes4_kid objectForKey:@"enviaStringCuantasVecesCepillaDientes4_kid"];
    [CuantasVecesCepillaDientes4_kid setText:cargaStringCuantasVecesCepillaDientes4_kid];
    
    NSUserDefaults *defaultsImportariaUsarAparatoOrtodoncicoNo_kid = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringImportariaUsarAparatoOrtodoncicoNo_kid = [defaultsImportariaUsarAparatoOrtodoncicoNo_kid objectForKey:@"enviaStringImportariaUsarAparatoOrtodoncicoNo_kid"];
    [ImportariaUsarAparatoOrtodoncicoNo_kid setText:cargaStringImportariaUsarAparatoOrtodoncicoNo_kid];
    
    NSUserDefaults *defaultsImportariaUsarAparatoOrtodoncicoSi_kid = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringImportariaUsarAparatoOrtodoncicoSi_kid = [defaultsImportariaUsarAparatoOrtodoncicoSi_kid objectForKey:@"enviaStringImportariaUsarAparatoOrtodoncicoSi_kid"];
    [ImportariaUsarAparatoOrtodoncicoSi_kid setText:cargaStringImportariaUsarAparatoOrtodoncicoSi_kid];
    
}


-(IBAction)dismisseFecha_kid:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseNombre_Kid:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseApellido_Kid:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseDireccion_kid:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseNumero_kid:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismissePiso_kid:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseFechaNacimiento_kid:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseEdad_kid:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseLocalidad_kid:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseCodigoPostal_Kid:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseNombrePadre_kid:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseNombreMadre_kid:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseProfesionPadre_kid:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseProfesionMadre_kid:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseCorreoElectronicoPadre_Kid:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseCorreoElectronicoMadre_kid:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseMovilPadre_kid:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseMovilMadre_kid:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseCuantosHermanosTienePaciente_kid:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseOtroMiembroEnConsulta_kid:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseQuienHaReferidoConsulta_kid:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseProblemPrincipalDientes_kid:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismissePadeceAlgunTipoDeEnfermedadNo_kid:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismissePadeceAlgunTipoDeEnfermedadSi_kid:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismissePadeceAlgunTipoDeEnfermedadCuales_kid:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseAlergiaMedicamentosNo_kid:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseAlergiaMedicamentosSi_kid:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseAlergiaMedicamentosCuales_kid:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseTraumatismoCabezaCaraNo_kid:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseTraumatismoCabezaCaraSi_kid:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseTraumatismoCabezaCaraCuales_kid:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseMedicacionUtilizada_kid:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseRoncaCuandoDuermeNo_Kid:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseRoncaCuandoDuermeSi_Kid:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseRespiraPorBocaSiempre_kid:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseRespiraPorBocaAlgunasVeces_kid:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseRespiraPorBocaNunca_kid:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseTieneTendenciaGripaNo_kid:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseTieneTendenciaGripaSi_kid:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseTratamientoOrtodoncicoNo_kid:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseTratamientoOrtodoncicoSi_kid:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseTratamientoOrtodoncicoCuales_kid:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseOperadoDeAmigdalasVegetacionesNo_kid:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseOperadoDeAmigdalasVegetacionesSi_kid:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseOperadoDeAmigdalasVegetacionesCuales_kid:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseUsoChupeteNo_kid:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseUsoChupeteSi_kid:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseUsoChupeteEdad_kid:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseChupoDedoNo_kid:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseChupoDedoSi_kid:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseChupoDedoEdad_kid:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseSeMuerdeUnasNo_kid:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseSeMuerdeUnasSi_kid:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseSeMuerdeLabiosNo_kid:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseSeMuerdeLabiosSi_kid:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseCuantasVecesCepillaDientes1_kid:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseCuantasVecesCepillaDientes2_kid:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseCuantasVecesCepillaDientes3_kid:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseCuantasVecesCepillaDientes4_kid:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseImportariaUsarAparatoOrtodoncicoNo_kid:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseImportariaUsarAparatoOrtodoncicoSi_kid:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseObservaciones_Kid:(id)sender
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
    if (textField == Fecha_kid)
    {
        [Fecha_kid becomeFirstResponder];
    }
    else if (textField == Nombre_Kid)
    {
        [Nombre_Kid becomeFirstResponder];
    }
    else if (textField == Apellido_Kid)
    {
        [Apellido_Kid becomeFirstResponder];
    }
    else if (textField == Direccion_kid)
    {
        [Direccion_kid becomeFirstResponder];
    }
    else if (textField == Numero_kid)
    {
        [Numero_kid becomeFirstResponder];
    }
    else if (textField == Piso_kid)
    {
        [Piso_kid becomeFirstResponder];
    }
    else if (textField == FechaNacimiento_kid)
    {
        [FechaNacimiento_kid becomeFirstResponder];
    }
    else if (textField == Edad_kid)
    {
        [Edad_kid becomeFirstResponder];
    }
    else if (textField == Localidad_kid)
    {
        [Localidad_kid becomeFirstResponder];
    }
    else if (textField == CodigoPostal_Kid)
    {
        [CodigoPostal_Kid becomeFirstResponder];
    }
    else if (textField == NombrePadre_kid)
    {
        [NombrePadre_kid becomeFirstResponder];
    }
    else if (textField == NombreMadre_kid)
    {
        [NombreMadre_kid becomeFirstResponder];
    }
    else if (textField == ProfesionPadre_kid)
    {
        [ProfesionPadre_kid becomeFirstResponder];
    }
    else if (textField == ProfesionMadre_kid)
    {
        [ProfesionMadre_kid becomeFirstResponder];
    }
    else if (textField == CorreoElectronicoPadre_Kid)
    {
        [CorreoElectronicoPadre_Kid becomeFirstResponder];
    }
    else if (textField == CorreoElectronicoMadre_kid)
    {
        [CorreoElectronicoMadre_kid becomeFirstResponder];
    }
    else if (textField == MovilPadre_kid)
    {
        [MovilPadre_kid becomeFirstResponder];
    }
    else if (textField == MovilMadre_kid)
    {
        [MovilMadre_kid becomeFirstResponder];
    }
    else if (textField == CuantosHermanosTienePaciente_kid)
    {
        [CuantosHermanosTienePaciente_kid becomeFirstResponder];
    }
    else if (textField == OtroMiembroEnConsulta_kid)
    {
        [OtroMiembroEnConsulta_kid becomeFirstResponder];
    }
    else if (textField == QuienHaReferidoConsulta_kid)
    {
        [QuienHaReferidoConsulta_kid becomeFirstResponder];
    }
    else if (textField == ProblemPrincipalDientes_kid)
    {
        [ProblemPrincipalDientes_kid becomeFirstResponder];
    }
    else if (textField == PadeceAlgunTipoDeEnfermedadNo_kid)
    {
        [PadeceAlgunTipoDeEnfermedadNo_kid becomeFirstResponder];
    }
    else if (textField == PadeceAlgunTipoDeEnfermedadSi_kid)
    {
        [PadeceAlgunTipoDeEnfermedadSi_kid becomeFirstResponder];
    }
    else if (textField == PadeceAlgunTipoDeEnfermedadCuales_kid)
    {
        [PadeceAlgunTipoDeEnfermedadCuales_kid becomeFirstResponder];
    }
    else if (textField == AlergiaMedicamentosNo_kid)
    {
        [AlergiaMedicamentosNo_kid becomeFirstResponder];
    }
    else if (textField == AlergiaMedicamentosSi_kid)
    {
        [AlergiaMedicamentosSi_kid becomeFirstResponder];
    }
    else if (textField == AlergiaMedicamentosCuales_kid)
    {
        [AlergiaMedicamentosCuales_kid becomeFirstResponder];
    }
    else if (textField == TraumatismoCabezaCaraNo_kid)
    {
        [TraumatismoCabezaCaraNo_kid becomeFirstResponder];
    }
    else if (textField == TraumatismoCabezaCaraSi_kid)
    {
        [TraumatismoCabezaCaraSi_kid becomeFirstResponder];
    }
    else if (textField == TraumatismoCabezaCaraCuales_kid)
    {
        [TraumatismoCabezaCaraCuales_kid becomeFirstResponder];
    }
    else if (textField == MedicacionUtilizada_kid)
    {
        [MedicacionUtilizada_kid becomeFirstResponder];
    }
    else if (textField == RoncaCuandoDuermeNo_Kid)
    {
        [RoncaCuandoDuermeNo_Kid becomeFirstResponder];
    }
    else if (textField == RoncaCuandoDuermeSi_Kid)
    {
        [RoncaCuandoDuermeSi_Kid becomeFirstResponder];
    }
    else if (textField == RespiraPorBocaSiempre_kid)
    {
        [RespiraPorBocaSiempre_kid becomeFirstResponder];
    }
    else if (textField == RespiraPorBocaAlgunasVeces_kid)
    {
        [RespiraPorBocaAlgunasVeces_kid becomeFirstResponder];
    }
    else if (textField == RespiraPorBocaNunca_kid)
    {
        [RespiraPorBocaNunca_kid becomeFirstResponder];
    }
    else if (textField == TieneTendenciaGripaNo_kid)
    {
        [TieneTendenciaGripaNo_kid becomeFirstResponder];
    }
    else if (textField == TieneTendenciaGripaSi_kid)
    {
        [TieneTendenciaGripaSi_kid becomeFirstResponder];
    }
    else if (textField == TratamientoOrtodoncicoNo_kid)
    {
        [TratamientoOrtodoncicoNo_kid becomeFirstResponder];
    }
    else if (textField == TratamientoOrtodoncicoSi_kid)
    {
        [TratamientoOrtodoncicoSi_kid becomeFirstResponder];
    }
    else if (textField == TratamientoOrtodoncicoEdad_kid)
    {
        [TratamientoOrtodoncicoEdad_kid becomeFirstResponder];
    }
    else if (textField == OperadoDeAmigdalasVegetacionesNo_kid)
    {
        [OperadoDeAmigdalasVegetacionesNo_kid becomeFirstResponder];
    }
    else if (textField == OperadoDeAmigdalasVegetacionesSi_kid)
    {
        [OperadoDeAmigdalasVegetacionesSi_kid becomeFirstResponder];
    }
    else if (textField == OperadoDeAmigdalasVegetacionesEdad_kid)
    {
        [OperadoDeAmigdalasVegetacionesEdad_kid becomeFirstResponder];
    }
    else if (textField == UsoChupeteNo_kid)
    {
        [UsoChupeteNo_kid becomeFirstResponder];
    }
    else if (textField == UsoChupeteSi_kid)
    {
        [UsoChupeteSi_kid becomeFirstResponder];
    }
    else if (textField == ChupoDedoNo_kid)
    {
        [ChupoDedoNo_kid becomeFirstResponder];
    }
    else if (textField == ChupoDedoSi_kid)
    {
        [ChupoDedoSi_kid becomeFirstResponder];
    }
    else if (textField == ChupoDedoEdad_kid)
    {
        [ChupoDedoEdad_kid becomeFirstResponder];
    }
    else if (textField == SeMuerdeUnasNo_kid)
    {
        [SeMuerdeUnasNo_kid becomeFirstResponder];
    }
    else if (textField == SeMuerdeUnasSi_kid)
    {
        [SeMuerdeUnasSi_kid becomeFirstResponder];
    }
    else if (textField == SeMuerdeLabiosNo_kid)
    {
        [SeMuerdeLabiosNo_kid becomeFirstResponder];
    }
    else if (textField == SeMuerdeLabiosSi_kid)
    {
        [SeMuerdeLabiosSi_kid becomeFirstResponder];
    }
    else if (textField == CuantasVecesCepillaDientes1_kid)
    {
        [CuantasVecesCepillaDientes1_kid becomeFirstResponder];
    }
    else if (textField == CuantasVecesCepillaDientes2_kid)
    {
        [CuantasVecesCepillaDientes2_kid becomeFirstResponder];
    }
    else if (textField == CuantasVecesCepillaDientes3_kid)
    {
        [CuantasVecesCepillaDientes3_kid becomeFirstResponder];
    }
    else if (textField == CuantasVecesCepillaDientes4_kid)
    {
        [CuantasVecesCepillaDientes4_kid becomeFirstResponder];
    }
    else if (textField == ImportariaUsarAparatoOrtodoncicoNo_kid)
    {
        [ImportariaUsarAparatoOrtodoncicoNo_kid becomeFirstResponder];
    }
    else if (textField == ImportariaUsarAparatoOrtodoncicoSi_kid)
    {
        [ImportariaUsarAparatoOrtodoncicoSi_kid becomeFirstResponder];
    }
    else
    {
        [textField resignFirstResponder];
    }  
    return  YES;
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
    
    [picker setMessageBody:emailBody isHTML:YES];
    
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




- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
