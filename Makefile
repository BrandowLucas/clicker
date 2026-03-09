CXX = x86_64-w64-mingw32-g++
CXXFLAGS = -std=c++17 -O2 -Wall -I. -I/usr/x86_64-w64-mingw32/include -DWIN32
TARGET = x64.exe
SOURCES = clicker/main.cpp \
          clicker/clicker.cpp \
          clicker/config.cpp \
          clicker/menu.cpp \
          clicker/utils.cpp \
          clicker/imgui/imgui.cpp \
          clicker/imgui/imgui_demo.cpp \
          clicker/imgui/imgui_draw.cpp \
          clicker/imgui/imgui_impl_dx9.cpp \
          clicker/imgui/imgui_impl_win32.cpp \
          clicker/imgui/imgui_tables.cpp \
          clicker/imgui/imgui_widgets.cpp

OBJS = $(SOURCES:.cpp=.o)

LIBS = -ld3d9 -ld3dx9 -lwinmm -luser32 -lkernel32 -lshell32 -lcomdlg32 -ladvapi32 -lole32 -lgdi32 -ldwmapi -lshfolder -luuid -mwindows

.PHONY: all clean

all: $(TARGET)

$(TARGET): $(OBJS)
	$(CXX) -o $@ $^ $(LIBS)

%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c -o $@ $<

clean:
	rm -f $(OBJS) $(TARGET)
