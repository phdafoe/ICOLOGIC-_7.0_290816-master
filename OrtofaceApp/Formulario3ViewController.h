//
//  Formulario3ViewController.h
//  OrtofaceApp
//
//  Created by andres ocampo on 18/10/12.
//  Copyright (c) 2012 andres ocampo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>
#import <MessageUI/MFMailComposeViewController.h>

@class KBF3ScrollView;

@interface Formulario3ViewController : UIViewController  <UITextFieldDelegate, UITextViewDelegate, MFMailComposeViewControllerDelegate>

{
    //Observaciones
    IBOutlet UITextView *Observaciones_Apnea;
    
    
    //formulario 3
    
   
    UIImageView *backgroundImageView;
    UIImageView *overlayImageView;
    BOOL scaning;
    
    IBOutlet UITextField *ArcoSuperiorIdeal;
    IBOutlet UITextField *ArcoInferiorideal;
    IBOutlet UITextField *DientesSeparadosDiastemas;
    IBOutlet UITextField *ApinamientoDentario;
    IBOutlet UITextField *FaltaDeDientes;
    IBOutlet UITextField *AngulacionesOFaltaDeEspacio;
    IBOutlet UITextField *FaltaDeEspacioParaErupcion;
    IBOutlet UITextField *DientesIncluidosONoErupcionados;
    
    IBOutlet UITextField *VistaFrontalIdeal;
    IBOutlet UITextField *VistaLateralIdeal;
    IBOutlet UITextField *DientesSuperioresHaciaAfueraVestibularizados;
    IBOutlet UITextField *MordidaAbiertaAnterior;
    IBOutlet UITextField *MordidaCruzadaPosterior;
    IBOutlet UITextField *MandibulaHaciaAtras;
    IBOutlet UITextField *MandibulaHaciaAfuera;
    IBOutlet UITextField *PerfilEquilibrado;
    
    IBOutlet UITextField *DientesSinEspacioApinados;
    IBOutlet UITextField *EspacioExcesivo;
    IBOutlet UITextField *DientesIncluidosORetenidos;
    IBOutlet UITextField *Sobremordida;
    IBOutlet UITextField *MordidaAbierta;
    IBOutlet UITextField *DiscrepanciasEnLasLineasMedidas;
    IBOutlet UITextField *ArcadaSuperiorEstrecha;
    IBOutlet UITextField *MordidaCruzadaAnterior;
    
    IBOutlet UITextField *MaxilarSuperiorAdelantadoAlMaxilarInferior;
    IBOutlet UITextField *MaxilarInferiorAdelantadoAlMaxilarSuperior;
    IBOutlet UITextField *MolaresInferioreInclinadosHaciaAdentro;
    IBOutlet UITextField *DientesHaciaAfuera;
    IBOutlet UITextField *ProblemasDeCrecimiento;
    IBOutlet UITextField *ProblemasDeLaArticulacionTemperomandibular;
    IBOutlet UITextField *PerimetroDelArcoDisminuidoPaladar;
    
    IBOutlet UITextField *NoRecomendamosTRatamientoEnEsteMomento;
    IBOutlet UITextField *PrecisaraTratamientoOrtodoncicoEnElFuturo;
    IBOutlet UITextField *HaremosOtraRevisionAlPaciente;
    IBOutlet UITextField *EsPosibleTratamientoAhora;
    IBOutlet UITextField *RealizarUnasRadiografias;
    IBOutlet UITextField *VolverAPedirCitaTraerRadiografias;
    IBOutlet UITextField *CitaParComentarResultados;
    IBOutlet UITextField *CitaASuDentista;
    
    
    
}

@property (nonatomic, retain) UIImage *screenshotImage;
@property (nonatomic, retain) IBOutlet UIImageView *backgroundImageView;
@property (nonatomic, retain) IBOutlet UIImageView *overlayImageView;
@property (nonatomic, retain) IBOutlet UIView *screenPictureView;
@property (nonatomic, retain) IBOutlet UILabel *screenPictureLabel;
@property (nonatomic, retain) IBOutlet UIImageView * screenPictureImageView;

@property (nonatomic, retain) IBOutlet KBF3ScrollView *scrollView;

@property (nonatomic, retain) IBOutlet UITextField *ArcoSuperiorIdeal;
@property (nonatomic, retain) IBOutlet UITextField *ArcoInferiorideal;
@property (nonatomic, retain) IBOutlet UITextField *DientesSeparadosDiastemas;
@property (nonatomic, retain) IBOutlet UITextField *ApinamientoDentario;
@property (nonatomic, retain) IBOutlet UITextField *FaltaDeDientes;
@property (nonatomic, retain) IBOutlet UITextField *AngulacionesOFaltaDeEspacio;
@property (nonatomic, retain) IBOutlet UITextField *FaltaDeEspacioParaErupcion;
@property (nonatomic, retain) IBOutlet UITextField *DientesIncluidosONoErupcionados;

@property (nonatomic, retain) IBOutlet UITextField *VistaFrontalIdeal;
@property (nonatomic, retain) IBOutlet UITextField *VistaLateralIdeal;
@property (nonatomic, retain) IBOutlet UITextField *DientesSuperioresHaciaAfueraVestibularizados;
@property (nonatomic, retain) IBOutlet UITextField *MordidaAbiertaAnterior;
@property (nonatomic, retain) IBOutlet UITextField *MordidaCruzadaPosterior;
@property (nonatomic, retain) IBOutlet UITextField *MandibulaHaciaAtras;
@property (nonatomic, retain) IBOutlet UITextField *MandibulaHaciaAfuera;
@property (nonatomic, retain) IBOutlet UITextField *PerfilEquilibrado;

@property (nonatomic, retain) IBOutlet UITextField *DientesSinEspacioApinados;
@property (nonatomic, retain) IBOutlet UITextField *EspacioExcesivo;
@property (nonatomic, retain) IBOutlet UITextField *DientesIncluidosORetenidos;
@property (nonatomic, retain) IBOutlet UITextField *Sobremordida;
@property (nonatomic, retain) IBOutlet UITextField *MordidaAbierta;
@property (nonatomic, retain) IBOutlet UITextField *DiscrepanciasEnLasLineasMedidas;
@property (nonatomic, retain) IBOutlet UITextField *ArcadaSuperiorEstrecha;
@property (nonatomic, retain) IBOutlet UITextField *MordidaCruzadaAnterior;

@property (nonatomic, retain) IBOutlet UITextField *MaxilarSuperiorAdelantadoAlMaxilarInferior;
@property (nonatomic, retain) IBOutlet UITextField *MaxilarInferiorAdelantadoAlMaxilarSuperior;
@property (nonatomic, retain) IBOutlet UITextField *MolaresInferioreInclinadosHaciaAdentro;
@property (nonatomic, retain) IBOutlet UITextField *DientesHaciaAfuera;
@property (nonatomic, retain) IBOutlet UITextField *ProblemasDeCrecimiento;
@property (nonatomic, retain) IBOutlet UITextField *ProblemasDeLaArticulacionTemperomandibular;
@property (nonatomic, retain) IBOutlet UITextField *PerimetroDelArcoDisminuidoPaladar;

@property (nonatomic, retain) IBOutlet UITextField *NoRecomendamosTRatamientoEnEsteMomento;
@property (nonatomic, retain) IBOutlet UITextField *PrecisaraTratamientoOrtodoncicoEnElFuturo;
@property (nonatomic, retain) IBOutlet UITextField *HaremosOtraRevisionAlPaciente;
@property (nonatomic, retain) IBOutlet UITextField *EsPosibleTratamientoAhora;
@property (nonatomic, retain) IBOutlet UITextField *RealizarUnasRadiografias;
@property (nonatomic, retain) IBOutlet UITextField *VolverAPedirCitaTraerRadiografias;
@property (nonatomic, retain) IBOutlet UITextField *CitaParComentarResultados;
@property (nonatomic, retain) IBOutlet UITextField *CitaASuDentista;

// acciones de salvado y recarga de datos del formulario

-(IBAction)enviar:(id)sender;
-(IBAction)cargarInformacion:(id)sender;

// formulario 3


-(IBAction)getUIKitScreeshot;

-(IBAction)dismisseArcoSuperiorIdeal:(id)sender;
-(IBAction)dismisseArcoInferiorideal:(id)sender;
-(IBAction)dismisseDientesSeparadosDiastemas:(id)sender;
-(IBAction)dismisseApinamientoDentario:(id)sender;
-(IBAction)dismisseFaltaDeDientes:(id)sender;
-(IBAction)dismisseAngulacionesOFaltaDeEspacio:(id)sender;
-(IBAction)dismisseFaltaDeEspacioParaErupcion:(id)sender;
-(IBAction)dismisseDientesIncluidosONoErupcionados:(id)sender;

-(IBAction)dismisseVistaFrontalIdeal:(id)sender;
-(IBAction)dismisseVistaLateralIdeal:(id)sender;
-(IBAction)dismisseDientesSuperioresHaciaAfueraVestibularizados:(id)sender;
-(IBAction)dismisseMordidaAbiertaAnterior:(id)sender;
-(IBAction)dismisseMordidaCruzadaPosterior:(id)sender;
-(IBAction)dismisseMandibulaHaciaAtras:(id)sender;
-(IBAction)dismissePerfilEquilibrado:(id)sender;
-(IBAction)dismisseMandibulaHaciaAfuera:(id)sender;

-(IBAction)dismisseDientesSinEspacioApinados:(id)sender;
-(IBAction)dismisseEspacioExcesivo:(id)sender;
-(IBAction)dismisseDientesIncluidosORetenidos:(id)sender;
-(IBAction)dismisseSobremordida:(id)sender;
-(IBAction)dismisseMordidaAbierta:(id)sender;
-(IBAction)dismisseDiscrepanciasEnLasLineasMedidas:(id)sender;
-(IBAction)dismisseArcadaSuperiorEstrecha:(id)sender;
-(IBAction)dismisseMordidaCruzadaAnterior:(id)sender;

-(IBAction)dismisseMaxilarSuperiorAdelantadoAlMaxilarInferior:(id)sender;
-(IBAction)dismisseMaxilarInferiorAdelantadoAlMaxilarSuperior:(id)sender;
-(IBAction)dismisseMolaresInferioreInclinadosHaciaAdentro:(id)sender;
-(IBAction)dismisseDientesHaciaAfuera:(id)sender;
-(IBAction)dismisseProblemasDeCrecimiento:(id)sender;
-(IBAction)dismisseProblemasDeLaArticulacionTemperomandibular:(id)sender;
-(IBAction)dismissePerimetroDelArcoDisminuidoPaladar:(id)sender;

-(IBAction)dismisseNoRecomendamosTRatamientoEnEsteMomento:(id)sender;
-(IBAction)dismissePrecisaraTratamientoOrtodoncicoEnElFuturo:(id)sender;
-(IBAction)dismisseHaremosOtraRevisionAlPaciente:(id)sender;
-(IBAction)dismisseEsPosibleTratamientoAhora:(id)sender;
-(IBAction)dismisseRealizarUnasRadiografias:(id)sender;
-(IBAction)dismisseVolverAPedirCitaTraerRadiografias:(id)sender;
-(IBAction)dismisseCitaASuDentista:(id)sender;


//propiedades que permiten obtener datso de nombre y apellido y enviaro a la vista de firma

@property (strong, nonatomic) NSString *messageNombre_Apnea;
@property (strong, nonatomic) NSString *messageApellido_Apnea;

- (void) displayScreenshotImage;
- (UIImage *)uiKitScreenshot;

@end
