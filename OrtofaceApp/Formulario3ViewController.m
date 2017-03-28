//
//  Formulario3ViewController.m
//  OrtofaceApp
//
//  Created by andres ocampo on 18/10/12.
//  Copyright (c) 2012 andres ocampo. All rights reserved.
//

#import "Formulario3ViewController.h"
#import "KBF3ScrollView.h"
#import <QuartzCore/QuartzCore.h>
#import <AVFoundation/AVFoundation.h>
#import <CoreGraphics/CoreGraphics.h>
#import <ImageIO/ImageIO.h>
#import <AssetsLibrary/AssetsLibrary.h>
#import "FirmaDigital_Apnea_ViewController.h"


@implementation Formulario3ViewController


@synthesize ArcoSuperiorIdeal, ArcoInferiorideal, DientesSeparadosDiastemas, ApinamientoDentario, FaltaDeDientes, AngulacionesOFaltaDeEspacio, FaltaDeEspacioParaErupcion, DientesIncluidosONoErupcionados, VistaFrontalIdeal, VistaLateralIdeal, DientesSuperioresHaciaAfueraVestibularizados, MordidaAbiertaAnterior, MordidaCruzadaPosterior, MandibulaHaciaAtras, MandibulaHaciaAfuera, PerfilEquilibrado, DientesSinEspacioApinados, EspacioExcesivo, DientesIncluidosORetenidos, Sobremordida, MordidaAbierta, DiscrepanciasEnLasLineasMedidas, ArcadaSuperiorEstrecha, MordidaCruzadaAnterior, MaxilarSuperiorAdelantadoAlMaxilarInferior, MaxilarInferiorAdelantadoAlMaxilarSuperior, MolaresInferioreInclinadosHaciaAdentro, DientesHaciaAfuera, ProblemasDeCrecimiento, ProblemasDeLaArticulacionTemperomandibular, PerimetroDelArcoDisminuidoPaladar, NoRecomendamosTRatamientoEnEsteMomento, PrecisaraTratamientoOrtodoncicoEnElFuturo, HaremosOtraRevisionAlPaciente, EsPosibleTratamientoAhora, RealizarUnasRadiografias, VolverAPedirCitaTraerRadiografias, CitaParComentarResultados, CitaASuDentista;



@synthesize overlayImageView, backgroundImageView, screenshotImage,screenPictureView,screenPictureLabel,screenPictureImageView, scrollView;


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"First to second"])
    {
        /*self.messageNombre_Apnea = Nombre_Apnea.text;
        self.messageApellido_Apnea = Apellido_Apnea.text;
        FirmaDigital_Apnea_ViewController *targetVC = [segue destinationViewController];
        targetVC.messageNombre_Apnea = self.messageNombre_Apnea;
        targetVC.messageApellido_Apnea = self.messageApellido_Apnea;*/
    }
}




-(IBAction)enviar:(id)sender

{
    
    NSString *enviaStringObservaciones_Apnea = Observaciones_Apnea.text;
    NSUserDefaults *defaultsObservaciones_Apnea = [NSUserDefaults standardUserDefaults];
    [defaultsObservaciones_Apnea setObject:enviaStringObservaciones_Apnea forKey:@"enviaStringObservaciones_Apnea"];
    [defaultsObservaciones_Apnea synchronize];
    
    NSString *enviaArcoSuperiorIdeal = ArcoSuperiorIdeal.text;
    NSUserDefaults *defaultsArcoSuperiorIdeal = [NSUserDefaults standardUserDefaults];
    [defaultsArcoSuperiorIdeal setObject:enviaArcoSuperiorIdeal forKey:@"enviaArcoSuperiorIdeal"];
    [defaultsArcoSuperiorIdeal synchronize];
    
    NSString *enviaArcoInferiorideal = ArcoInferiorideal.text;
    NSUserDefaults *defaultsArcoInferiorideal = [NSUserDefaults standardUserDefaults];
    [defaultsArcoInferiorideal setObject:enviaArcoInferiorideal forKey:@"enviaArcoInferiorideal"];
    [defaultsArcoInferiorideal synchronize];
    
    NSString *enviaDientesSeparadosDiastemas = DientesSeparadosDiastemas.text;
    NSUserDefaults *defaultsDientesSeparadosDiastemas = [NSUserDefaults standardUserDefaults];
    [defaultsDientesSeparadosDiastemas setObject:enviaDientesSeparadosDiastemas forKey:@"enviaDientesSeparadosDiastemas"];
    [defaultsDientesSeparadosDiastemas synchronize];
    
    NSString *enviaApinamientoDentario = ApinamientoDentario.text;
    NSUserDefaults *defaultsApinamientoDentario = [NSUserDefaults standardUserDefaults];
    [defaultsApinamientoDentario setObject:enviaApinamientoDentario forKey:@"enviaApinamientoDentario"];
    [defaultsApinamientoDentario synchronize];
    
    NSString *enviaFaltaDeDientes = FaltaDeDientes.text;
    NSUserDefaults *defaultsFaltaDeDientes = [NSUserDefaults standardUserDefaults];
    [defaultsFaltaDeDientes setObject:enviaFaltaDeDientes forKey:@"enviaFaltaDeDientes"];
    [defaultsFaltaDeDientes synchronize];
    
    NSString *enviaAngulacionesOFaltaDeEspacio = AngulacionesOFaltaDeEspacio.text;
    NSUserDefaults *defaultsAngulacionesOFaltaDeEspacio = [NSUserDefaults standardUserDefaults];
    [defaultsAngulacionesOFaltaDeEspacio setObject:enviaAngulacionesOFaltaDeEspacio forKey:@"enviaAngulacionesOFaltaDeEspacio"];
    [defaultsAngulacionesOFaltaDeEspacio synchronize];
    
    NSString *enviaFaltaDeEspacioParaErupcion = FaltaDeEspacioParaErupcion.text;
    NSUserDefaults *defaultsFaltaDeEspacioParaErupcion = [NSUserDefaults standardUserDefaults];
    [defaultsFaltaDeEspacioParaErupcion setObject:enviaFaltaDeEspacioParaErupcion forKey:@"enviaFaltaDeEspacioParaErupcion"];
    [defaultsFaltaDeEspacioParaErupcion synchronize];
    
    NSString *enviaDientesIncluidosONoErupcionados = DientesIncluidosONoErupcionados.text;
    NSUserDefaults *defaultsDientesIncluidosONoErupcionados = [NSUserDefaults standardUserDefaults];
    [defaultsDientesIncluidosONoErupcionados setObject:enviaDientesIncluidosONoErupcionados forKey:@"enviaSDientesIncluidosONoErupcionados"];
    [defaultsDientesIncluidosONoErupcionados synchronize];
    
    NSString *enviaVistaFrontalIdeal = VistaFrontalIdeal.text;
    NSUserDefaults *defaultsVistaFrontalIdeal = [NSUserDefaults standardUserDefaults];
    [defaultsVistaFrontalIdeal setObject:enviaVistaFrontalIdeal forKey:@"enviaVistaFrontalIdeal"];
    [defaultsVistaFrontalIdeal synchronize];
    
    NSString *enviaVistaLateralIdeal = VistaLateralIdeal.text;
    NSUserDefaults *defaultsVistaLateralIdeal = [NSUserDefaults standardUserDefaults];
    [defaultsVistaLateralIdeal setObject:enviaVistaLateralIdeal forKey:@"enviaVistaLateralIdeal"];
    [defaultsVistaLateralIdeal synchronize];
    
    NSString *enviaDientesSuperioresHaciaAfueraVestibularizados = DientesSuperioresHaciaAfueraVestibularizados.text;
    NSUserDefaults *defaultsSuperioresHaciaAfueraVestibularizados = [NSUserDefaults standardUserDefaults];
    [defaultsSuperioresHaciaAfueraVestibularizados setObject:enviaDientesSuperioresHaciaAfueraVestibularizados forKey:@"enviaDientesSuperioresHaciaAfueraVestibularizados"];
    [defaultsSuperioresHaciaAfueraVestibularizados synchronize];
    
    NSString *enviaMordidaAbiertaAnterior = MordidaAbiertaAnterior.text;
    NSUserDefaults *defaultsMordidaAbiertaAnterior = [NSUserDefaults standardUserDefaults];
    [defaultsMordidaAbiertaAnterior setObject:enviaMordidaAbiertaAnterior forKey:@"enviaMordidaAbiertaAnterior"];
    [defaultsMordidaAbiertaAnterior synchronize];
    
    NSString *enviaMordidaCruzadaPosterior = MordidaCruzadaPosterior.text;
    NSUserDefaults *defaultsMordidaCruzadaPosterior = [NSUserDefaults standardUserDefaults];
    [defaultsMordidaCruzadaPosterior setObject:enviaMordidaCruzadaPosterior forKey:@"enviaMordidaCruzadaPosterior"];
    [defaultsMordidaCruzadaPosterior synchronize];
    
    NSString *enviaMandibulaHaciaAtras = MandibulaHaciaAtras.text;
    NSUserDefaults *defaultsMandibulaHaciaAtras = [NSUserDefaults standardUserDefaults];
    [defaultsMandibulaHaciaAtras setObject:enviaMandibulaHaciaAtras forKey:@"enviaMandibulaHaciaAtras"];
    [defaultsMandibulaHaciaAtras synchronize];
    
    NSString *enviaMandibulaHaciaAfuera = MandibulaHaciaAfuera.text;
    NSUserDefaults *defaultsMandibulaHaciaAfuera = [NSUserDefaults standardUserDefaults];
    [defaultsMandibulaHaciaAfuera setObject:enviaMandibulaHaciaAfuera forKey:@"enviaMandibulaHaciaAfuera"];
    [defaultsMandibulaHaciaAfuera synchronize];
    
    NSString *enviaPerfilEquilibrado = PerfilEquilibrado.text;
    NSUserDefaults *defaultsPerfilEquilibrado = [NSUserDefaults standardUserDefaults];
    [defaultsPerfilEquilibrado setObject:enviaPerfilEquilibrado forKey:@"enviaPerfilEquilibrado"];
    [defaultsPerfilEquilibrado synchronize];
    
    NSString *enviaDientesSinEspacioApinados = DientesSinEspacioApinados.text;
    NSUserDefaults *defaultsDientesSinEspacioApinados = [NSUserDefaults standardUserDefaults];
    [defaultsDientesSinEspacioApinados setObject:enviaDientesSinEspacioApinados forKey:@"enviaDientesSinEspacioApinados"];
    [defaultsDientesSinEspacioApinados synchronize];
    
    NSString *enviaEspacioExcesivo = EspacioExcesivo.text;
    NSUserDefaults *defaultsEspacioExcesivo = [NSUserDefaults standardUserDefaults];
    [defaultsEspacioExcesivo setObject:enviaEspacioExcesivo forKey:@"enviaEspacioExcesivo"];
    [defaultsEspacioExcesivo synchronize];
    
    NSString *enviaDientesIncluidosORetenidos = DientesIncluidosORetenidos.text;
    NSUserDefaults *defaultsDientesIncluidosORetenidos = [NSUserDefaults standardUserDefaults];
    [defaultsDientesIncluidosORetenidos setObject:enviaDientesIncluidosORetenidos forKey:@"enviaDientesIncluidosORetenidos"];
    [defaultsDientesIncluidosORetenidos synchronize];
    
    NSString *enviaSobremordida = Sobremordida.text;
    NSUserDefaults *defaultsSobremordida = [NSUserDefaults standardUserDefaults];
    [defaultsSobremordida setObject:enviaSobremordida forKey:@"enviaSobremordida"];
    [defaultsSobremordida synchronize];
    
    NSString *enviaMordidaAbierta = MordidaAbierta.text;
    NSUserDefaults *defaultsMordidaAbierta = [NSUserDefaults standardUserDefaults];
    [defaultsMordidaAbierta setObject:enviaMordidaAbierta forKey:@"enviaMordidaAbierta"];
    [defaultsMordidaAbierta synchronize];
    
    NSString *enviaDiscrepanciasEnLasLineasMedidas = DiscrepanciasEnLasLineasMedidas.text;
    NSUserDefaults *defaultsDiscrepanciasEnLasLineasMedidas = [NSUserDefaults standardUserDefaults];
    [defaultsDiscrepanciasEnLasLineasMedidas setObject:enviaDiscrepanciasEnLasLineasMedidas forKey:@"enviaDiscrepanciasEnLasLineasMedidas"];
    [defaultsDiscrepanciasEnLasLineasMedidas synchronize];
    
    NSString *enviaArcadaSuperiorEstrecha = ArcadaSuperiorEstrecha.text;
    NSUserDefaults *defaultsArcadaSuperiorEstrecha = [NSUserDefaults standardUserDefaults];
    [defaultsArcadaSuperiorEstrecha setObject:enviaArcadaSuperiorEstrecha forKey:@"enviaArcadaSuperiorEstrecha"];
    [defaultsArcadaSuperiorEstrecha synchronize];
    
    NSString *enviaMordidaCruzadaAnterior = MordidaCruzadaAnterior.text;
    NSUserDefaults *defaultsMordidaCruzadaAnterior = [NSUserDefaults standardUserDefaults];
    [defaultsMordidaCruzadaAnterior setObject:enviaMordidaCruzadaAnterior forKey:@"enviaMordidaCruzadaAnterior"];
    [defaultsMordidaCruzadaAnterior synchronize];
    
    NSString *enviaMaxilarSuperiorAdelantadoAlMaxilarInferior = MaxilarSuperiorAdelantadoAlMaxilarInferior.text;
    NSUserDefaults *defaultsMaxilarSuperiorAdelantadoAlMaxilarInferior = [NSUserDefaults standardUserDefaults];
    [defaultsMaxilarSuperiorAdelantadoAlMaxilarInferior setObject:enviaMaxilarSuperiorAdelantadoAlMaxilarInferior forKey:@"enviaMaxilarSuperiorAdelantadoAlMaxilarInferior"];
    [defaultsMaxilarSuperiorAdelantadoAlMaxilarInferior synchronize];
    
    NSString *enviaMaxilarInferiorAdelantadoAlMaxilarSuperior = MaxilarInferiorAdelantadoAlMaxilarSuperior.text;
    NSUserDefaults *defaultsMaxilarInferiorAdelantadoAlMaxilarSuperior = [NSUserDefaults standardUserDefaults];
    [defaultsMaxilarInferiorAdelantadoAlMaxilarSuperior setObject:enviaMaxilarInferiorAdelantadoAlMaxilarSuperior forKey:@"enviaMaxilarInferiorAdelantadoAlMaxilarSuperior"];
    [defaultsMaxilarInferiorAdelantadoAlMaxilarSuperior synchronize];
    
    NSString *enviaMolaresInferioreInclinadosHaciaAdentro = MolaresInferioreInclinadosHaciaAdentro.text;
    NSUserDefaults *defaultsMolaresInferioreInclinadosHaciaAdentro = [NSUserDefaults standardUserDefaults];
    [defaultsMolaresInferioreInclinadosHaciaAdentro setObject:enviaMolaresInferioreInclinadosHaciaAdentro forKey:@"enviaMolaresInferioreInclinadosHaciaAdentro"];
    [defaultsMolaresInferioreInclinadosHaciaAdentro synchronize];
    
    NSString *enviaDientesHaciaAfuera = DientesHaciaAfuera.text;
    NSUserDefaults *defaultsDientesHaciaAfuera = [NSUserDefaults standardUserDefaults];
    [defaultsDientesHaciaAfuera setObject:enviaDientesHaciaAfuera forKey:@"enviaDientesHaciaAfuera"];
    [defaultsDientesHaciaAfuera synchronize];
    
    NSString *enviaProblemasDeCrecimiento = ProblemasDeCrecimiento.text;
    NSUserDefaults *defaultsProblemasDeCrecimiento = [NSUserDefaults standardUserDefaults];
    [defaultsProblemasDeCrecimiento setObject:enviaProblemasDeCrecimiento forKey:@"enviaProblemasDeCrecimiento"];
    [defaultsProblemasDeCrecimiento synchronize];
    
    NSString *enviaProblemasDeLaArticulacionTemperomandibular = ProblemasDeLaArticulacionTemperomandibular.text;
    NSUserDefaults *defaultsProblemasDeLaArticulacionTemperomandibular = [NSUserDefaults standardUserDefaults];
    [defaultsProblemasDeLaArticulacionTemperomandibular setObject:enviaProblemasDeLaArticulacionTemperomandibular forKey:@"enviaStringRonquidoMolestaNo"];
    [defaultsProblemasDeLaArticulacionTemperomandibular synchronize];
    
    NSString *enviaPerimetroDelArcoDisminuidoPaladar = PerimetroDelArcoDisminuidoPaladar.text;
    NSUserDefaults *defaultsPerimetroDelArcoDisminuidoPaladar = [NSUserDefaults standardUserDefaults];
    [defaultsPerimetroDelArcoDisminuidoPaladar setObject:enviaPerimetroDelArcoDisminuidoPaladar forKey:@"enviaPerimetroDelArcoDisminuidoPaladar"];
    [defaultsPerimetroDelArcoDisminuidoPaladar synchronize];
    
    NSString *enviaNoRecomendamosTRatamientoEnEsteMomento = NoRecomendamosTRatamientoEnEsteMomento.text;
    NSUserDefaults *defaultsNoRecomendamosTRatamientoEnEsteMomento = [NSUserDefaults standardUserDefaults];
    [defaultsNoRecomendamosTRatamientoEnEsteMomento setObject:enviaNoRecomendamosTRatamientoEnEsteMomento forKey:@"enviaNoRecomendamosTRatamientoEnEsteMomento"];
    [defaultsNoRecomendamosTRatamientoEnEsteMomento synchronize];
    
    NSString *enviaPrecisaraTratamientoOrtodoncicoEnElFuturo = PrecisaraTratamientoOrtodoncicoEnElFuturo.text;
    NSUserDefaults *defaultsPrecisaraTratamientoOrtodoncicoEnElFuturo = [NSUserDefaults standardUserDefaults];
    [defaultsPrecisaraTratamientoOrtodoncicoEnElFuturo setObject:enviaPrecisaraTratamientoOrtodoncicoEnElFuturo forKey:@"enviaPrecisaraTratamientoOrtodoncicoEnElFuturo"];
    [defaultsPrecisaraTratamientoOrtodoncicoEnElFuturo synchronize];
    
    NSString *enviaHaremosOtraRevisionAlPaciente = HaremosOtraRevisionAlPaciente.text;
    NSUserDefaults *defaultsHaremosOtraRevisionAlPaciente = [NSUserDefaults standardUserDefaults];
    [defaultsHaremosOtraRevisionAlPaciente setObject:enviaHaremosOtraRevisionAlPaciente forKey:@"enviaHaremosOtraRevisionAlPaciente"];
    [defaultsHaremosOtraRevisionAlPaciente synchronize];
    
    NSString *enviaEsPosibleTratamientoAhora = EsPosibleTratamientoAhora.text;
    NSUserDefaults *defaultsEsPosibleTratamientoAhora = [NSUserDefaults standardUserDefaults];
    [defaultsEsPosibleTratamientoAhora setObject:enviaEsPosibleTratamientoAhora forKey:@"enviaEsPosibleTratamientoAhora"];
    [defaultsEsPosibleTratamientoAhora synchronize];
    
    NSString *enviaRealizarUnasRadiografias = RealizarUnasRadiografias.text;
    NSUserDefaults *defaultsRealizarUnasRadiografias = [NSUserDefaults standardUserDefaults];
    [defaultsRealizarUnasRadiografias setObject:enviaRealizarUnasRadiografias forKey:@"enviaRealizarUnasRadiografias"];
    [defaultsRealizarUnasRadiografias synchronize];
    
    NSString *enviaVolverAPedirCitaTraerRadiografias = VolverAPedirCitaTraerRadiografias.text;
    NSUserDefaults *defaultsVolverAPedirCitaTraerRadiografias = [NSUserDefaults standardUserDefaults];
    [defaultsVolverAPedirCitaTraerRadiografias setObject:enviaVolverAPedirCitaTraerRadiografias forKey:@"enviaVolverAPedirCitaTraerRadiografias"];
    [defaultsVolverAPedirCitaTraerRadiografias synchronize];
    
    NSString *enviaCitaParComentarResultados = CitaParComentarResultados.text;
    NSUserDefaults *defaultsCitaParComentarResultados = [NSUserDefaults standardUserDefaults];
    [defaultsCitaParComentarResultados setObject:enviaCitaParComentarResultados forKey:@"enviaCitaParComentarResultados"];
    [defaultsCitaParComentarResultados synchronize];
    
    NSString *enviaCitaASuDentista = CitaASuDentista.text;
    NSUserDefaults *defaultsCitaASuDentista = [NSUserDefaults standardUserDefaults];
    [defaultsCitaASuDentista setObject:enviaCitaASuDentista forKey:@"enviaCitaASuDentista"];
    [defaultsCitaASuDentista synchronize];
    
    
    /*
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Atención!"
                                                    message:@"Por favor escriba las observaciones  que considere necesarias, además de pulsar el botón Finalizar, para continuar con el proceso."
                                                   delegate:nil
                                          cancelButtonTitle:nil
                                          otherButtonTitles:@"Muchas Gracias!", nil];
    
    [alert show];*/
}

-(IBAction)cargarInformacion:(id)sender

{
    NSUserDefaults *defaultsObservaciones_Apnea = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringObservaciones_Apnea = [defaultsObservaciones_Apnea objectForKey:@"enviaStringObservaciones_Apnea"];
    [Observaciones_Apnea setText:cargaStringObservaciones_Apnea];
    
       
    NSUserDefaults *defaultsArcoSuperiorIdeal = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringArcoSuperiorIdeal = [defaultsArcoSuperiorIdeal objectForKey:@"enviaArcoSuperiorIdeal"];
    [ArcoSuperiorIdeal setText:cargaStringArcoSuperiorIdeal];
    
    NSUserDefaults *defaultsArcoInferiorideal = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringArcoInferiorideal = [defaultsArcoInferiorideal objectForKey:@"enviaArcoInferiorideal"];
    [ArcoInferiorideal setText:cargaStringArcoInferiorideal];
    
    NSUserDefaults *defaultsDientesSeparadosDiastemas = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringDientesSeparadosDiastemas = [defaultsDientesSeparadosDiastemas objectForKey:@"enviaDientesSeparadosDiastemas"];
    [DientesSeparadosDiastemas setText:cargaStringDientesSeparadosDiastemas];
    
    NSUserDefaults *defaultsApinamientoDentario = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringApinamientoDentario = [defaultsApinamientoDentario objectForKey:@"enviaApinamientoDentario"];
    [ApinamientoDentario setText:cargaStringApinamientoDentario];
    
    NSUserDefaults *defaultsFaltaDeDientes = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringFaltaDeDientes = [defaultsFaltaDeDientes objectForKey:@"enviaFaltaDeDientes"];
    [FaltaDeDientes setText:cargaStringFaltaDeDientes];
    
    NSUserDefaults *defaultsAngulacionesOFaltaDeEspacio = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringAngulacionesOFaltaDeEspacio = [defaultsAngulacionesOFaltaDeEspacio objectForKey:@"enviaAngulacionesOFaltaDeEspacio"];
    [AngulacionesOFaltaDeEspacio setText:cargaStringAngulacionesOFaltaDeEspacio];
    
    NSUserDefaults *defaultsFaltaDeEspacioParaErupcion = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringFaltaDeEspacioParaErupcion = [defaultsFaltaDeEspacioParaErupcion objectForKey:@"enviaFaltaDeEspacioParaErupcion"];
    [FaltaDeEspacioParaErupcion setText:cargaStringFaltaDeEspacioParaErupcion];
    
    NSUserDefaults *defaultsDientesIncluidosONoErupcionados = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringDientesIncluidosONoErupcionados = [defaultsDientesIncluidosONoErupcionados objectForKey:@"enviaDientesIncluidosONoErupcionados"];
    [DientesIncluidosONoErupcionados setText:cargaStringDientesIncluidosONoErupcionados];
    
    NSUserDefaults *defaultsVistaFrontalIdeal = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringVistaFrontalIdeal = [defaultsVistaFrontalIdeal objectForKey:@"enviaVistaFrontalIdeal"];
    [VistaFrontalIdeal setText:cargaStringVistaFrontalIdeal];
    
    NSUserDefaults *defaultsVistaLateralIdeal = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringVistaLateralIdeal = [defaultsVistaLateralIdeal objectForKey:@"enviaVistaLateralIdeal"];
    [VistaLateralIdeal setText:cargaStringVistaLateralIdeal];
    
    NSUserDefaults *defaultsDientesSuperioresHaciaAfueraVestibularizados = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringDientesSuperioresHaciaAfueraVestibularizados = [defaultsDientesSuperioresHaciaAfueraVestibularizados objectForKey:@"enviaDientesSuperioresHaciaAfueraVestibularizados"];
    [DientesSuperioresHaciaAfueraVestibularizados setText:cargaStringDientesSuperioresHaciaAfueraVestibularizados];
    
    NSUserDefaults *defaultsMordidaAbiertaAnterior = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringMordidaAbiertaAnterior = [defaultsMordidaAbiertaAnterior objectForKey:@"enviaMordidaAbiertaAnterior"];
    [MordidaAbiertaAnterior setText:cargaStringMordidaAbiertaAnterior];
    
    NSUserDefaults *defaultsMordidaCruzadaPosterior = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringMordidaCruzadaPosterior = [defaultsMordidaCruzadaPosterior objectForKey:@"enviaMordidaCruzadaPosterior"];
    [MordidaCruzadaPosterior setText:cargaStringMordidaCruzadaPosterior];
    
    NSUserDefaults *defaultsMandibulaHaciaAtras = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringMandibulaHaciaAtras = [defaultsMandibulaHaciaAtras objectForKey:@"enviaMandibulaHaciaAtras"];
    [MandibulaHaciaAtras setText:cargaStringMandibulaHaciaAtras];
    
    NSUserDefaults *defaultsPerfilEquilibrado = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringPerfilEquilibrado = [defaultsPerfilEquilibrado objectForKey:@"enviaPerfilEquilibrado"];
    [PerfilEquilibrado setText:cargaStringPerfilEquilibrado];
    
    NSUserDefaults *defaultsDientesSinEspacioApinados = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringDientesSinEspacioApinados = [defaultsDientesSinEspacioApinados objectForKey:@"enviaDientesSinEspacioApinados"];
    [DientesSinEspacioApinados setText:cargaStringDientesSinEspacioApinados];
    
    NSUserDefaults *defaultsEspacioExcesivo = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringEspacioExcesivo = [defaultsEspacioExcesivo objectForKey:@"enviaEspacioExcesivo"];
    [EspacioExcesivo setText:cargaStringEspacioExcesivo];
    
    NSUserDefaults *defaultsDientesIncluidosORetenidos = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringDientesIncluidosORetenidos = [defaultsDientesIncluidosORetenidos objectForKey:@"enviaDientesIncluidosORetenidos"];
    [DientesIncluidosORetenidos setText:cargaStringDientesIncluidosORetenidos];
    
    NSUserDefaults *defaultsSobremordida = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringSobremordida = [defaultsSobremordida objectForKey:@"enviaSobremordida"];
    [Sobremordida setText:cargaStringSobremordida];
    
    NSUserDefaults *defaultsMordidaAbierta = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringMordidaAbierta = [defaultsMordidaAbierta objectForKey:@"enviaMordidaAbierta"];
    [MordidaAbierta setText:cargaStringMordidaAbierta];
    
    NSUserDefaults *defaultsDiscrepanciasEnLasLineasMedidas = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringDiscrepanciasEnLasLineasMedidas = [defaultsDiscrepanciasEnLasLineasMedidas objectForKey:@"enviaDiscrepanciasEnLasLineasMedidas"];
    [DiscrepanciasEnLasLineasMedidas setText:cargaStringDiscrepanciasEnLasLineasMedidas];
    
    NSUserDefaults *defaultsArcadaSuperiorEstrecha = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringArcadaSuperiorEstrecha = [defaultsArcadaSuperiorEstrecha objectForKey:@"enviaArcadaSuperiorEstrecha"];
    [ArcadaSuperiorEstrecha setText:cargaStringArcadaSuperiorEstrecha];
    
    NSUserDefaults *defaultsMordidaCruzadaAnterior = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringMordidaCruzadaAnterior = [defaultsMordidaCruzadaAnterior objectForKey:@"enviaMordidaCruzadaAnterior"];
    [MordidaCruzadaAnterior setText:cargaStringMordidaCruzadaAnterior];
    
    NSUserDefaults *defaultsMaxilarSuperiorAdelantadoAlMaxilarInferior = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringMaxilarSuperiorAdelantadoAlMaxilarInferior = [defaultsMaxilarSuperiorAdelantadoAlMaxilarInferior objectForKey:@"enviaMaxilarSuperiorAdelantadoAlMaxilarInferior"];
    [MaxilarSuperiorAdelantadoAlMaxilarInferior setText:cargaStringMaxilarSuperiorAdelantadoAlMaxilarInferior];
    
    NSUserDefaults *defaultsMaxilarInferiorAdelantadoAlMaxilarSuperior = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringMaxilarInferiorAdelantadoAlMaxilarSuperior = [defaultsMaxilarInferiorAdelantadoAlMaxilarSuperior objectForKey:@"enviaMaxilarInferiorAdelantadoAlMaxilarSuperior"];
    [MaxilarInferiorAdelantadoAlMaxilarSuperior setText:cargaStringMaxilarInferiorAdelantadoAlMaxilarSuperior];
    
    NSUserDefaults *defaultsMolaresInferioreInclinadosHaciaAdentro = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringMolaresInferioreInclinadosHaciaAdentro = [defaultsMolaresInferioreInclinadosHaciaAdentro objectForKey:@"enviaMolaresInferioreInclinadosHaciaAdentro"];
    [MolaresInferioreInclinadosHaciaAdentro setText:cargaStringMolaresInferioreInclinadosHaciaAdentro];
    
    NSUserDefaults *defaultsDientesHaciaAfuera = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringDientesHaciaAfuera = [defaultsDientesHaciaAfuera objectForKey:@"enviaDientesHaciaAfuera"];
    [DientesHaciaAfuera setText:cargaStringDientesHaciaAfuera];
    
    NSUserDefaults *defaultsProblemasDeCrecimiento = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringProblemasDeCrecimiento = [defaultsProblemasDeCrecimiento objectForKey:@"enviaProblemasDeCrecimiento"];
    [ProblemasDeCrecimiento setText:cargaStringProblemasDeCrecimiento];
    
    NSUserDefaults *defaultsProblemasDeLaArticulacionTemperomandibular = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringProblemasDeLaArticulacionTemperomandibular = [defaultsProblemasDeLaArticulacionTemperomandibular objectForKey:@"enviaProblemasDeLaArticulacionTemperomandibular"];
    [ProblemasDeLaArticulacionTemperomandibular setText:cargaStringProblemasDeLaArticulacionTemperomandibular];
    
    NSUserDefaults *defaultsPerimetroDelArcoDisminuidoPaladar = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringPerimetroDelArcoDisminuidoPaladar = [defaultsPerimetroDelArcoDisminuidoPaladar objectForKey:@"enviaPerimetroDelArcoDisminuidoPaladar"];
    [PerimetroDelArcoDisminuidoPaladar setText:cargaStringPerimetroDelArcoDisminuidoPaladar];
    
    NSUserDefaults *defaultsNoRecomendamosTRatamientoEnEsteMomento = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringNoRecomendamosTRatamientoEnEsteMomento = [defaultsNoRecomendamosTRatamientoEnEsteMomento objectForKey:@"enviaNoRecomendamosTRatamientoEnEsteMomento"];
    [NoRecomendamosTRatamientoEnEsteMomento setText:cargaStringNoRecomendamosTRatamientoEnEsteMomento];
    
    NSUserDefaults *defaultsPrecisaraTratamientoOrtodoncicoEnElFuturo = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringPrecisaraTratamientoOrtodoncicoEnElFuturo = [defaultsPrecisaraTratamientoOrtodoncicoEnElFuturo objectForKey:@"enviaPrecisaraTratamientoOrtodoncicoEnElFuturo"];
    [PrecisaraTratamientoOrtodoncicoEnElFuturo setText:cargaStringPrecisaraTratamientoOrtodoncicoEnElFuturo];
    
    NSUserDefaults *defaultsHaremosOtraRevisionAlPaciente = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringHaremosOtraRevisionAlPaciente = [defaultsHaremosOtraRevisionAlPaciente objectForKey:@"enviaHaremosOtraRevisionAlPaciente"];
    [HaremosOtraRevisionAlPaciente setText:cargaStringHaremosOtraRevisionAlPaciente];
    
    NSUserDefaults *defaultsEsPosibleTratamientoAhora = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringEsPosibleTratamientoAhora = [defaultsEsPosibleTratamientoAhora objectForKey:@"enviaEsPosibleTratamientoAhora"];
    [EsPosibleTratamientoAhora setText:cargaStringEsPosibleTratamientoAhora];
    
    NSUserDefaults *defaultsRealizarUnasRadiografias = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringRealizarUnasRadiografias = [defaultsRealizarUnasRadiografias objectForKey:@"enviaRealizarUnasRadiografias"];
    [RealizarUnasRadiografias setText:cargaStringRealizarUnasRadiografias];
    
    NSUserDefaults *defaultsVolverAPedirCitaTraerRadiografias = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringVolverAPedirCitaTraerRadiografias = [defaultsVolverAPedirCitaTraerRadiografias objectForKey:@"enviaVolverAPedirCitaTraerRadiografias"];
    [VolverAPedirCitaTraerRadiografias setText:cargaStringVolverAPedirCitaTraerRadiografias];
    
    NSUserDefaults *defaultsCitaParComentarResultados = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringCitaParComentarResultados = [defaultsCitaParComentarResultados objectForKey:@"enviaCitaParComentarResultados"];
    [CitaParComentarResultados setText:cargaStringCitaParComentarResultados];
    
    NSUserDefaults *defaultsCitaASuDentista = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringCitaASuDentista = [defaultsCitaASuDentista objectForKey:@"enviaCitaASuDentista"];
    [CitaASuDentista setText:cargaStringCitaASuDentista];
    

      
}

-(IBAction)dismisseArcoSuperiorIdeal:(id)sender{
    [sender resignFirstResponder];
}

-(IBAction)dismisseArcoInferiorideal:(id)sender{
    [sender resignFirstResponder];
}
-(IBAction)dismisseDientesSeparadosDiastemas:(id)sender{
    [sender resignFirstResponder];
}

-(IBAction)dismisseApinamientoDentario:(id)sender{
    [sender resignFirstResponder];
}

-(IBAction)dismisseFaltaDeDientes:(id)sender{
    [sender resignFirstResponder];
}

-(IBAction)dismisseAngulacionesOFaltaDeEspacio:(id)sender{
    [sender resignFirstResponder];
}

-(IBAction)dismisseFaltaDeEspacioParaErupcion:(id)sender{
    [sender resignFirstResponder];
}

-(IBAction)dismisseDientesIncluidosONoErupcionados:(id)sender{
    [sender resignFirstResponder];
}

-(IBAction)dismisseVistaFrontalIdeal:(id)sender{
    [sender resignFirstResponder];
}

-(IBAction)dismisseVistaLateralIdeal:(id)sender{
    [sender resignFirstResponder];
}

-(IBAction)dismisseDientesSuperioresHaciaAfueraVestibularizados:(id)sender{
    [sender resignFirstResponder];
}

-(IBAction)dismisseMordidaAbiertaAnterior:(id)sender{
    [sender resignFirstResponder];
}

-(IBAction)dismisseMordidaCruzadaPosterior:(id)sender{
    [sender resignFirstResponder];
}

-(IBAction)dismisseMandibulaHaciaAtras:(id)sender{
    [sender resignFirstResponder];
}

-(IBAction)dismissePerfilEquilibrado:(id)sender{
    [sender resignFirstResponder];
}

-(IBAction)dismisseMandibulaHaciaAfuera:(id)sender{
    [sender resignFirstResponder];
}

-(IBAction)dismisseDientesSinEspacioApinados:(id)sender{
    [sender resignFirstResponder];
}

-(IBAction)dismisseEspacioExcesivo:(id)sender{
    [sender resignFirstResponder];
}

-(IBAction)dismisseDientesIncluidosORetenidos:(id)sender{
    [sender resignFirstResponder];
}

-(IBAction)dismisseSobremordida:(id)sender{
    [sender resignFirstResponder];
}

-(IBAction)dismisseMordidaAbierta:(id)sender{
    [sender resignFirstResponder];
}

-(IBAction)dismisseDiscrepanciasEnLasLineasMedidas:(id)sender{
    [sender resignFirstResponder];
}

-(IBAction)dismisseArcadaSuperiorEstrecha:(id)sender{
    [sender resignFirstResponder];
}

-(IBAction)dismisseMordidaCruzadaAnterior:(id)sender{
    [sender resignFirstResponder];
}

-(IBAction)dismisseMaxilarSuperiorAdelantadoAlMaxilarInferior:(id)sender{
    [sender resignFirstResponder];
}

-(IBAction)dismisseMaxilarInferiorAdelantadoAlMaxilarSuperior:(id)sender{
    [sender resignFirstResponder];
}

-(IBAction)dismisseMolaresInferioreInclinadosHaciaAdentro:(id)sender{
    [sender resignFirstResponder];
}

-(IBAction)dismisseDientesHaciaAfuera:(id)sender{
    [sender resignFirstResponder];
}

-(IBAction)dismisseProblemasDeCrecimiento:(id)sender{
    [sender resignFirstResponder];
}

-(IBAction)dismisseProblemasDeLaArticulacionTemperomandibular:(id)sender{
    [sender resignFirstResponder];
}

-(IBAction)dismissePerimetroDelArcoDisminuidoPaladar:(id)sender{
    [sender resignFirstResponder];
}

-(IBAction)dismisseNoRecomendamosTRatamientoEnEsteMomento:(id)sender{
    [sender resignFirstResponder];
}

-(IBAction)dismissePrecisaraTratamientoOrtodoncicoEnElFuturo:(id)sender{
    [sender resignFirstResponder];
}

-(IBAction)dismisseHaremosOtraRevisionAlPaciente:(id)sender{
    [sender resignFirstResponder];
}

-(IBAction)dismisseEsPosibleTratamientoAhora:(id)sender{
    [sender resignFirstResponder];
}

-(IBAction)dismisseRealizarUnasRadiografias:(id)sender{
    [sender resignFirstResponder];
}

-(IBAction)dismisseVolverAPedirCitaTraerRadiografias:(id)sender{
    [sender resignFirstResponder];
}

-(IBAction)dismisseCitaASuDentista:(id)sender{
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
    if (textField == ArcoSuperiorIdeal)
    {
        [ArcoSuperiorIdeal becomeFirstResponder];
    }
    else if (textField == ArcoInferiorideal)
    {
        [ArcoInferiorideal becomeFirstResponder];
    }
    else if (textField == DientesSeparadosDiastemas)
    {
        [DientesSeparadosDiastemas becomeFirstResponder];
    }
    else if (textField == ApinamientoDentario)
    {
        [ApinamientoDentario becomeFirstResponder];
    }
    else if (textField == FaltaDeDientes)
    {
        [FaltaDeDientes becomeFirstResponder];
    }
    else if (textField == AngulacionesOFaltaDeEspacio)
    {
        [AngulacionesOFaltaDeEspacio becomeFirstResponder];
    }
    else if (textField == FaltaDeEspacioParaErupcion)
    {
        [FaltaDeEspacioParaErupcion becomeFirstResponder];
    }
    else if (textField == DientesIncluidosONoErupcionados)
    {
        [DientesIncluidosONoErupcionados becomeFirstResponder];
    }
    else if (textField == VistaFrontalIdeal)
    {
        [VistaFrontalIdeal becomeFirstResponder];
    }
    else if (textField == VistaLateralIdeal)
    {
        [VistaLateralIdeal becomeFirstResponder];
    }
    else if (textField == DientesSuperioresHaciaAfueraVestibularizados)
    {
        [DientesSuperioresHaciaAfueraVestibularizados becomeFirstResponder];
    }
    else if (textField == MordidaAbiertaAnterior)
    {
        [MordidaAbiertaAnterior becomeFirstResponder];
    }
    else if (textField == MordidaCruzadaPosterior)
    {
        [MordidaCruzadaPosterior becomeFirstResponder];
    }
    else if (textField == MandibulaHaciaAtras)
    {
        [MandibulaHaciaAtras becomeFirstResponder];
    }
    else if (textField == MandibulaHaciaAfuera)
    {
        [MandibulaHaciaAfuera becomeFirstResponder];
    }
    else if (textField == PerfilEquilibrado)
    {
        [PerfilEquilibrado becomeFirstResponder];
    }
    else if (textField == DientesSinEspacioApinados)
    {
        [DientesSinEspacioApinados becomeFirstResponder];
    }
    else if (textField == EspacioExcesivo)
    {
        [EspacioExcesivo becomeFirstResponder];
    }
    else if (textField == DientesIncluidosORetenidos)
    {
        [DientesIncluidosORetenidos becomeFirstResponder];
    }
    else if (textField == Sobremordida)
    {
        [Sobremordida becomeFirstResponder];
    }
    else if (textField == MordidaAbierta)
    {
        [MordidaAbierta becomeFirstResponder];
    }
    else if (textField == DiscrepanciasEnLasLineasMedidas)
    {
        [DiscrepanciasEnLasLineasMedidas becomeFirstResponder];
    }
    else if (textField == ArcadaSuperiorEstrecha)
    {
        [ArcadaSuperiorEstrecha becomeFirstResponder];
    }
    else if (textField == MordidaCruzadaAnterior)
    {
        [MordidaCruzadaAnterior becomeFirstResponder];
    }
    else if (textField == MaxilarSuperiorAdelantadoAlMaxilarInferior)
    {
        [MaxilarSuperiorAdelantadoAlMaxilarInferior becomeFirstResponder];
    }
    else if (textField == MaxilarInferiorAdelantadoAlMaxilarSuperior)
    {
        [MaxilarInferiorAdelantadoAlMaxilarSuperior becomeFirstResponder];
    }
    else if (textField == MolaresInferioreInclinadosHaciaAdentro)
    {
        [MolaresInferioreInclinadosHaciaAdentro becomeFirstResponder];
    }
    else if (textField == DientesHaciaAfuera)
    {
        [DientesHaciaAfuera becomeFirstResponder];
    }
    else if (textField == ProblemasDeCrecimiento)
    {
        [ProblemasDeCrecimiento becomeFirstResponder];
    }
    else if (textField == ProblemasDeLaArticulacionTemperomandibular)
    {
        [ProblemasDeLaArticulacionTemperomandibular becomeFirstResponder];
    }
    else if (textField == PerimetroDelArcoDisminuidoPaladar)
    {
        [PerimetroDelArcoDisminuidoPaladar becomeFirstResponder];
    }
    else if (textField == NoRecomendamosTRatamientoEnEsteMomento)
    {
        [NoRecomendamosTRatamientoEnEsteMomento becomeFirstResponder];
    }
    else if (textField == PrecisaraTratamientoOrtodoncicoEnElFuturo)
    {
        [PrecisaraTratamientoOrtodoncicoEnElFuturo becomeFirstResponder];
    }
    else if (textField == HaremosOtraRevisionAlPaciente)
    {
        [HaremosOtraRevisionAlPaciente becomeFirstResponder];
    }
    else if (textField == EsPosibleTratamientoAhora)
    {
        [EsPosibleTratamientoAhora becomeFirstResponder];
    }
    else if (textField == RealizarUnasRadiografias)
    {
        [RealizarUnasRadiografias becomeFirstResponder];
    }
    else if (textField == VolverAPedirCitaTraerRadiografias)
    {
        [VolverAPedirCitaTraerRadiografias becomeFirstResponder];
    }
    else if (textField == CitaParComentarResultados)
    {
        [CitaParComentarResultados becomeFirstResponder];
    }
    else if (textField == CitaASuDentista)
    {
        [CitaASuDentista becomeFirstResponder];
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
    [picker setSubject:@"Envío *.jpg para base de datos recordatorio de pacientes"];
    NSArray *toRecipient = @[@"beatriz@ortoface.com", @"comunicacion@ortoface.com"];
    [picker setToRecipients:toRecipient];
    NSData *imageData = UIImageJPEGRepresentation(image, 0.5);
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
