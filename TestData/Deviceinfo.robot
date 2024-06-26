*** Settings ***
Library     AppiumLibrary

*** Variables ***
${Phone_Number}          8050904029

#Strom Pro Device Details
${StormPro_Watch_Name}        Storm Pro
${StormPro_Watch_In_List}     //android.widget.TextView[@text="Storm Pro"]
${StormPro_watch_ID}         //android.widget.TextView[@text="STORMPRO_0130"]

#XendPro Device Details
${XtendPro_Watch_Name}          Xtend Pro
${XtendPro_Watch_In_List}      //android.widget.TextView[@text="Xtend Pro"]
${XtendPro_Watch_ID}           //android.widget.TextView[@text="XTENDPRO_DEDF"]


#CosmosPro Device Details
${CosmosPro_Watch_Name}      Cosmos Pro
${CosmosPro_Watch_In_List}     //android.widget.TextView[@text="Cosmos Pro"]
${CosmosPro_watch_ID}        //android.widget.TextView[@text="COSMOSPRO_3009"]

#StormProCall Device Details
${StormProCall_Watch_Name}       Storm Pro Call
${StormProCall_Watch_In_List}     //android.widget.TextView[@text="Storm Pro Call"]
${StormProCall_watch_ID}         //android.widget.TextView[@text="SPROCALL_031D"]


#Xtend Sport WAVE PLUS (CZ) Device Details
${StormProCall_Watch_Name}       Xtend Sport
${XtendSport_Watch_In_List}     //android.widget.TextView[@text="Xtend Sport"]
${XtendSport_watch_ID}         //android.widget.TextView[@text="XTENDSPORT_A740"]

#WAVE PRO Device Details
${WavePro_Watch_Name}       Wave Pro
${WavePro_Watch_In_List}     //android.widget.TextView[@text="Wave Pro"]
${WavePro_watch_ID}         //android.widget.TextView[@text="WAVEPRO_DE3A"]

#WAVE PRO Device Details
${WavePrime_Watch_Name}       Wave Prime
${WavePrime_Watch_In_List}     //android.widget.TextView[@text="Wave Prime"]
${WavePrime_watch_ID}         //android.widget.TextView[@text="WAVEPRIME_A0ED"]

#ULC Wave Play Device Details
${WavePlay_Watch_Name}       Wave Play
${WavePlay_Watch_In_List}     //android.widget.TextView[@text="Wave Play"]
${WavePlay_watch_ID}         //android.widget.TextView[@text="WAVEPLAY_8F1D"]

#ULC Wave Beat Device Details
${WaveBeat_Watch_Name}       Wave Beat
${WaveBeat_Watch_In_List}     //android.widget.TextView[@text="Wave Beat"]
${WaveBeat_watch_ID}         //android.widget.TextView[@text="WAVEBEAT_8C38"]

#ULC Wave Style Device Details
${WaveStyle_Watch_Name}       Wave Style
${WaveStyle_Watch_In_List}     //android.widget.TextView[@text="Wave Style"]
${WaveStyle_watch_ID}         //android.widget.TextView[@text="WAVESTYLE_0006"]

#ULC Wave Beat Call Device Details
${WaveBeatCall_Watch_Name}       Wave Beat Call
${Wave_Beat_Call_Watch_In_List}     //android.widget.TextView[@text="Wave Beat Call"]
${Wave_Beat_Call_watch_ID}         //android.widget.TextView[@text="BEATCALL_D809"]

#ULC Wave Style Call Device Details
${WaveStyleCall_Watch_Name}       Wave Style Call
${Wave_Style_Call_Watch_In_List}     //android.widget.TextView[@text="Wave Style Call"]
${Wave_Style_Call_watch_ID}         //android.widget.TextView[@text="STYLECALL_D6A7"]


#ULC Wave Smart Call Device Details
${WaveSmartCall_Watch_Name}       Wave Smart Call
${Wave_Smart_Call_Watch_In_List}     //android.widget.TextView[@text="Wave Smart Call"]
${Wave_Smart_Call_watch_ID}         //android.widget.TextView[@text="SMARTCALL_1B9D"]

#ULC Wave Lynk Voice Device Details
${WaveLynkVoice_Watch_Name}       Wave Smart Call
${Wave_Lynk_Voice_Watch_In_List}     //android.widget.TextView[@text="Wave Lynk Voice"]
${Wave_Lynk_Voice_watch_ID}         //android.widget.TextView[@text="LYNKVOICE_D9E4"]

#ULC5BT Ultima Call Device Details
${ULC5BT_Ultima_Call_Watch_Name}            Ultima Call
${ULC5BT_Ultima_Call_Watch_In_List}     //android.widget.TextView[@text="Ultima Call"]
${ULC5BT_Ultima_Call_watch_ID}         //android.widget.TextView[@text="ULCALL_4DDC"]


#Touch ELX Lunar Call Device Details
${Lunar_Call_Watch_Name}            Lunar Call
${Lunar_Call_Watch_In_List}     //android.widget.TextView[@text="Lunar Call"]
${Lunar_Call_watch_ID}         //android.widget.TextView[@text="LUNARCALL_E770"]

#Touch ELX Wave Connect Plus Device Details
${Wave_Connect_Plus_Watch_Name}            Wave Connect Plus
${Wave_Connect_Plus_Watch_In_List}     //android.widget.TextView[@text="Wave Connect Plus"]
${Wave_Connect_Plus_watch_ID}         //android.widget.TextView[@text="CONNECTPLUS_8E51"]

#Touch ELX Lunar Connect Plus Device Details
${Lunar_Connect_Plus_Watch_Name}            Lunar Connect Plus
${Lunar_Connect_Plus_Watch_In_List}     //android.widget.TextView[@text="Lunar Connect Plus"]
${Lunar_Connect_Plus_watch_ID}         //android.widget.TextView[@text="LCONNECTPLUS_D624"]

#Touch ELX Storm Connect Plus Device Details
${Storm_Connect_Plus_Watch_Name}            Storm Connect Plus
${Storm_Connect_Plus_Watch_In_List}     //android.widget.TextView[@text="Storm Connect Plus"]
${Storm_Connect_Plus_watch_ID}         //android.widget.TextView[@text="SCONNECTPLUS_05AD"]


#Estapex Stride Voice Device Details
${Stride_Voice_Watch_Name}            Stride Voice
${Stride_Voice_Watch_In_List}     //android.widget.TextView[@text="Wave Stride Voice"]
${Stride_Voice_watch_ID}         //android.widget.TextView[@text="STRIDE VOICE"]


#Estapex Primia Ace Device Details
${Primia_Ace_Watch_Name}            Primia Ace
${Primia_Ace_Watch_In_List}      //android.widget.TextView[@text="Primia Ace"]
${Primia_Ace_watch_ID}          //android.widget.TextView[@text="PRIMIA ACE"]

#Estapex Xtend Plus Device Details
${Primia_Ace_Watch_Name}            Xtend Plus
${Xtend_Plus_Watch_In_List}      //android.widget.TextView[@text="Xtend Plus"]
${Xtend_Plus_watch_ID}          //android.widget.TextView[@text="XTEND PLUS"]

#CY-1 Device Details
${Lunar_Call_Pro_Watch_Name}            Lunar Call Pro
${Lunar_Call_Pro_Watch_In_List}      //android.widget.TextView[@text="Lunar Call Pro"]
${Lunar_Call_Pro_Watch_ID}          //android.widget.TextView[@text="LCALLPRO_8594"]

#CY-1 Device Details
${Wave_Primia_Talk_Watch_Name}            Wave Primia Talk
${Wave_Primia_Talk_Watch_In_List}      //android.widget.TextView[@text="Wave Primia Talk"]
${Wave_Primia_Talk_Watch_ID}          //android.widget.TextView[@text="PRIMIATALK_C740"]

#Opp3 Device Details
${Ultima_Prism_Watch_Name}            Ultima Prism
${Ultima_Prism_Watch_In_List}      //android.widget.TextView[@text="Ultima Prism"]
${Ultima_Prism_Watch_ID}          //android.widget.TextView[@text="PRISM_9D4E"]

#JL Device Details
${JL_Sigma_Watch_Name}            Wave Sigma
${JL_Sigma_Watch_In_List}      //android.widget.TextView[@text="Wave Sigma"]
${JL_Sigma_Watch_ID}          //android.widget.TextView[@text="SIGMA_918C"]