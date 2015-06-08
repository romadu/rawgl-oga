
SDL_CFLAGS = `sdl-config --cflags`
SDL_LIBS = `sdl-config --libs` -lSDL_mixer -lGL

DEFINES = -DBYPASS_PROTECTION

CXX = g++
CXXFLAGS := -g -O -MMD -Wuninitialized -Wundef -Wreorder $(SDL_CFLAGS) $(DEFINES)

SRCS = aifcplayer.cpp bitmap.cpp file.cpp engine.cpp graphics.cpp script.cpp mixer.cpp pak.cpp resource.cpp resource_nth.cpp resource_win31.cpp resource_3do.cpp systemstub_ogl.cpp \
	sfxplayer.cpp staticres.cpp unpack.cpp util.cpp video.cpp main.cpp

OBJS = $(SRCS:.cpp=.o)
DEPS = $(SRCS:.cpp=.d)

rawgl: $(OBJS)
	$(CXX) $(LDFLAGS) -o $@ $(OBJS) $(SDL_LIBS) -lz

clean:
	rm -f $(OBJS) $(DEPS)

-include $(DEPS)
