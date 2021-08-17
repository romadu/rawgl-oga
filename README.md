
# raw(gl) - Another World Interpreter

rawgl is a re-implementation of the engine used in the game Another World.

![Screenshot Intro Amiga](docs/screenshot-intro-amiga.png) ![Screenshot Intro 3DO](docs/screenshot-intro-3do.png)

# rawgl-oga

Use `make -f Makefile` to compile game

Create your RAWGL.sh file like so

``
#!/bin/bash

cd /roms/ports/rawgl/

SDL_GAMECONTROLLERCONFIG="add sdl game controller info here" ./rawgl --window=480x320 --render=software --datapath="/roms/ports/rawgl/gamedata" --language=us
``

If using the 20th Anniversary Edition switch `--render=software` to `--render=original`.

# SDL_GAMECONTROLLERCONFIG

Here are a few examples for `SDL_GAMECONTROLLRCONFIG`

RGB10 -

```SDL_GAMECONTROLLERCONFIG="190000004b4800000010000001010000,GO-Advance Gamepad (rev 1.1),a:b1,b:b0,x:b2,y:b3,leftshoulder:b4,rightshoulder:b5,dpdown:b9,dpleft:b10,dpright:b11,dpup:b8,leftx:a0,lefty:a1,guide:b12,leftstick:b14,lefttrigger:b13,rightstick:b15,righttrigger:b16,start:b17,platform:Linux,"```

RG351p/m -

```SDL_GAMECONTROLLERCONFIG="03000000091200000031000011010000,OpenSimHardware OSH PB Controller,a:b0,b:b1,x:b3,y:b2,leftshoulder:b4,rightshoulder:b5,dpdown:h0.4,dpleft:h0.8,dpright:h0.2,dpup:h0.1,leftx:a0~,lefty:a1~,guide:b7,leftstick:b8,lefttrigger:b10,rightstick:b9,back:b12,start:b6,rightx:a2,righty:a3,righttrigger:b11,platform:Linux,"```

## Supported Versions

The program requires the original data files.

```
- Amiga (Bank*)
- Atari (Bank*)
- Atari demo (AW.TOS)
- DOS (Bank*, memlist.bin)
- DOS demo (Demo*, memlist.bin)
- 15th Anniversary Edition (Data/Pak01.pak, Menu/, Music/)
- 20th Anniversary Edition (game/)
- Windows 3.1 (Bank, *mid)
- 3DO (GameData/ or .ISO)
```


## Running

By default, the engine tries to load the game data files from the current
directory. This can be changed with command line switches.

```
  Usage: rawgl [OPTIONS]...
    --datapath=PATH   Path to data files (default '.')
    --language=LANG   Language (fr,us,de,es,it)
    --part=NUM        Game part to start from (0-35 or 16001-16009)
    --render=NAME     Renderer (original,software,gl)
    --window=WxH      Windowed display size (default '640x400')
    --fullscreen      Fullscreen display (stretched)
    --fullscreen-ar   Fullscreen display (16:10 aspect ratio)
    --ega-palette     Use EGA palette with DOS version
```

In game controller hotkeys :

```
  D-Pad/Analog    move Lester
  A               run/shoot
  L1/R1           enter a code to start at a specific position
  Start           pause the game
  Select          exit the game     
```

In game keyboard hotkeys :

```
  Arrow Keys      move Lester
  Enter/Space     run/shoot
  C               enter a code to start at a specific position
  P               pause the game
  Alt X           exit the game
```

## Technical Details

- [Amiga/DOS](docs/Amiga_DOS.md)
- [3DO](docs/3DO.md)
- [WiiU](docs/WiiU.md)
