#include <a_samp>

#define COLOR_ORANGE 0xEC7600FF
#define COLOR_RED 0xEC0000FF

public OnPlayerConnect(playerid) {
  SendClientMessage(playerid, 0xFF2200FF, "Na serveru se náchazí FS Rádio. /radio");
  return 1;
}
// Pøíkazy
public OnPlayerCommandText(playerid, cmdtext[]) {
  if(strcmp(cmdtext, "/radio", true) == 0) {
    ShowPlayerDialog(playerid,100,DIALOG_STYLE_LIST,"<<<Radio>>>","{0033FF}Èeské stanice\n{0033FF}Slovenské stanice\n{FF3333}Vypnout rádio\n{FF3333}Credits","Vyber","Konec");
    return 1;
  }
  if(strcmp(cmdtext, "/stop", true) == 0) {
    StopAudioStreamForPlayer(playerid);
    return 1;
  }
  return 0;
}
// Dialog
public OnDialogResponse(playerid, dialogid, response, listitem, inputtext[]) {
  if(dialogid == 100) {
    if(response) {
      switch (listitem) {
        case 0: {
          ShowPlayerDialog(playerid,101,DIALOG_STYLE_LIST,"{0033FF}<<<Radio>>>","Europa 2\nFajn Radio\nKiss\nRock Zone\nDance\nBlanik\nBeat\nHumor\nHipHopVibes\nMetalica\nCountry\nDepeche Mode\nClubbeat\nGroovy House","Vyber","Konec");
        }
        case 1: {
          ShowPlayerDialog(playerid,102,DIALOG_STYLE_LIST,"{0033FF}<<<Radio>>>","Europa 2\nFunRadio\nRadio Expres\nJemne Melodie\nLumen\nPatria","Vyber","Konec");
        }
        case 2: {
          StopAudioStreamForPlayer(playerid);
          SendClientMessage(playerid, COLOR_RED, "Vypnuli jste si rádio. Pro zapnutí rádia napi¹te /radio");
        }
        case 3: {
          ShowPlayerDialog(playerid,103,DIALOG_STYLE_MSGBOX,"{FF3333}<<<Radio>>>"," * Radio FS\n * © by Roman 'Roman3349' Ondráèek\n * Skype: ondracek.roman ","Konec","");
        }
      }
    }
  }
// Èeská rádia
  if(dialogid == 101) {
    if(response) {
      switch (listitem) {
       case 0: {
         StopAudioStreamForPlayer(playerid);
         PlayAudioStreamForPlayer(playerid,"http://icecast3.play.cz/evropa2-128.mp3.m3u");// Europa 2
         SendClientMessage(playerid, COLOR_ORANGE, "Naladil jsi si Rádio Europa 2");
         SendClientMessage(playerid, COLOR_RED, "Pro vypnutí rádia napi¹te /stop nebo /radio");
       }
       case 1: {
         StopAudioStreamForPlayer(playerid);
         PlayAudioStreamForPlayer(playerid,"http://ice.abradio.cz:8000/fajn128.mp3");// Fajn Radio
         SendClientMessage(playerid, COLOR_ORANGE, "Naladil jsi si Fajn Radio");
         SendClientMessage(playerid, COLOR_RED, "Pro vypnutí rádia napi¹te /stop nebo /radio");
       }
       case 2: {
         StopAudioStreamForPlayer(playerid);
         PlayAudioStreamForPlayer(playerid,"http://85.159.106.242:8000/kissmp3_128.mp3");// Radio Kiss
         SendClientMessage(playerid, COLOR_ORANGE, "Naladil jsi si Rádio Kiss");
         SendClientMessage(playerid, COLOR_RED, "Pro vypnutí rádia napi¹te /stop nebo /radio");
       }
       case 3: {
         StopAudioStreamForPlayer(playerid);
         PlayAudioStreamForPlayer(playerid,"http://icecast5.play.cz/rockzone128.mp3");// Radio Rock Zone
         SendClientMessage(playerid, COLOR_ORANGE, "Naladil jsi si Rádio Rock Zone");
         SendClientMessage(playerid, COLOR_RED, "Pro vypnutí rádia napi¹te /stop nebo /radio");
       }
       case 4: {
         StopAudioStreamForPlayer(playerid);
         PlayAudioStreamForPlayer(playerid,"http://mp3stream4.abradio.cz:8000/dance128.mp3");// Radio Dance
         SendClientMessage(playerid, COLOR_ORANGE, "Naladil jsi si Rádio Dance");
         SendClientMessage(playerid, COLOR_RED, "Pro vypnutí rádia napi¹te /stop nebo /radio");
       }
       case 5: {
         StopAudioStreamForPlayer(playerid);
         PlayAudioStreamForPlayer(playerid,"http://ice.abradio.cz/blanikfm128.mp3");// Radio Blanik
         SendClientMessage(playerid, COLOR_ORANGE, "Naladil jsi si Rádio Blanik");
         SendClientMessage(playerid, COLOR_RED, "Pro vypnutí rádia napi¹te /stop nebo /radio");
       }
       case 6: {
         StopAudioStreamForPlayer(playerid);
         PlayAudioStreamForPlayer(playerid,"http://ice.abradio.cz:8000/beat128.mp3");// Radio Beat
         SendClientMessage(playerid, COLOR_ORANGE, "Naladil jsi si Rádio Beat");
         SendClientMessage(playerid, COLOR_RED, "Pro vypnutí rádia napi¹te /stop nebo /radio");
       }
       case 7: {
         StopAudioStreamForPlayer(playerid);
         PlayAudioStreamForPlayer(playerid,"http://mp3stream4.abradio.cz:8000/humor128.mp3");// Radio Humor
         SendClientMessage(playerid, COLOR_ORANGE, "Naladil jsi si Rádio Humor");
         SendClientMessage(playerid, COLOR_RED, "Pro vypnutí rádia napi¹te /stop nebo /radio");
       }
       case 8: {
         StopAudioStreamForPlayer(playerid);
         PlayAudioStreamForPlayer(playerid,"http://mp3stream4.abradio.cz:8000/hiphopvibes128.mp3");// Radio HipHopVibes
         SendClientMessage(playerid, COLOR_ORANGE, "Naladil jsi si Rádio HipHopVibes");
         SendClientMessage(playerid, COLOR_RED, "Pro vypnutí rádia napi¹te /stop nebo /radio");
       }
       case 9: {
         StopAudioStreamForPlayer(playerid);
         PlayAudioStreamForPlayer(playerid,"http://ice.abradio.cz/metallica128.mp3");// Radio Metalica
         SendClientMessage(playerid, COLOR_ORANGE, "Naladil jsi si Rádio Metalica");
         SendClientMessage(playerid, COLOR_RED, "Pro vypnutí rádia napi¹te /stop nebo /radio");
       }
       case 10: {
         StopAudioStreamForPlayer(playerid);
         PlayAudioStreamForPlayer(playerid,"http://mp3stream4.abradio.cz:8000/country128.mp3");// Radio Country
         SendClientMessage(playerid, COLOR_ORANGE, "Naladil jsi si Rádio Country");
         SendClientMessage(playerid, COLOR_RED, "Pro vypnutí rádia napi¹te /stop nebo /radio");
       }
       case 11: {
         StopAudioStreamForPlayer(playerid);
         PlayAudioStreamForPlayer(playerid,"http://mp3stream4.abradio.cz:8000/depeche128.mp3");// Radio Depeche Mode
         SendClientMessage(playerid, COLOR_ORANGE, "Naladil jsi si Rádio Depeche Mode");
         SendClientMessage(playerid, COLOR_RED, "Pro vypnutí rádia napi¹te /stop nebo /radio");
       }
       case 12: {
         StopAudioStreamForPlayer(playerid);
         PlayAudioStreamForPlayer(playerid,"http://mp3stream4.abradio.cz:8000/clubbeat128.mp3");// Radio Clubbeat
         SendClientMessage(playerid, COLOR_ORANGE, "Naladil jsi si Rádio Clubbeat");
         SendClientMessage(playerid, COLOR_RED, "Pro vypnutí rádia napi¹te /stop nebo /radio");
       }
       case 13: {
         StopAudioStreamForPlayer(playerid);
         PlayAudioStreamForPlayer(playerid,"http://ice.abradio.cz/ghouse128.mp3");// Radio Groovy House
         SendClientMessage(playerid, COLOR_ORANGE, "Naladil jsi si Rádio Groovy House");
         SendClientMessage(playerid, COLOR_RED, "Pro vypnutí rádia napi¹te /stop nebo /radio");
       }
      }
    }
  }
// Slovenská rádia
  if(dialogid == 102){
    if(response) {
      switch (listitem) {
        case 0: {
          StopAudioStreamForPlayer(playerid);
		  PlayAudioStreamForPlayer(playerid,"http://ice2.europa2.sk/fm-europa2sk-128");// Europa 2
		  SendClientMessage(playerid, COLOR_ORANGE, "Naladili jste si Europu 2");
		  SendClientMessage(playerid, COLOR_RED, "Pro vypnutí rádia napi¹te /stop nebo /radio");
        }
        case 1 : {
          StopAudioStreamForPlayer(playerid);
          PlayAudioStreamForPlayer(playerid,"http://stream.funradio.sk:8000/fun128.mp3");// FunRadio
          SendClientMessage(playerid, COLOR_ORANGE, "Naladili jste si FunRadio");
          SendClientMessage(playerid, COLOR_RED, "Pro vypnutí rádia napi¹te /stop nebo /radio");
        }
        case 2: {
          StopAudioStreamForPlayer(playerid);
          PlayAudioStreamForPlayer(playerid,"http://85.248.7.162:8000/96.mp3");// Radio Expres
          SendClientMessage(playerid, COLOR_ORANGE, "Naladili jste si Rádio Expres");
          SendClientMessage(playerid, COLOR_RED, "Pro vypnutí rádia napi¹te /stop nebo /radio");
        }
        case 3: {
          StopAudioStreamForPlayer(playerid);
          PlayAudioStreamForPlayer(playerid,"http://www.jemnemelodie.sk:8000");// Jemne Melodie
          SendClientMessage(playerid, COLOR_ORANGE, "Naladili jste si Jemne Melodie");
          SendClientMessage(playerid, COLOR_RED, "Pro vypnutí rádia napi¹te /stop nebo /radio");
        }
        case 4: {
          StopAudioStreamForPlayer(playerid);
          PlayAudioStreamForPlayer(playerid,"http://audio.lumen.sk:8000/live128.mp3");// Radio Lumen
          SendClientMessage(playerid, COLOR_ORANGE, "Naladili jste si Rádio Lumen");
          SendClientMessage(playerid, COLOR_RED, "Pro vypnutí rádia napi¹te /stop nebo /radio"); 
        }
        case 5: {
          StopAudioStreamForPlayer(playerid);
          PlayAudioStreamForPlayer(playerid,"http://live.slovakradio.sk:8000/Patria_128.mp3");// Radio Patria
          SendClientMessage(playerid, COLOR_ORANGE, "Naladili jste si Rádio Patria");
          SendClientMessage(playerid, COLOR_RED, "Pro vypnutí rádia napi¹te /stop nebo /radio");
        }
      }
    }
  }
  return 1;
}
