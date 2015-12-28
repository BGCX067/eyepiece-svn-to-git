qtopia_project(qtopia plugin)

CONFIG += release
CONFIG += no_pkg

HEADERS += djvuplugin.h
SOURCES += djvuplugin.cpp

INCLUDEPATH += ../application

# Dependencies
LIBS += -ldjvulibre

# Adjust according to your environment:
#INCLUDEPATH += /home/pqlaz/Desktop/qtopia/fakeroot_ezx/usr/include
#LIBS += -L/home/pqlaz/Desktop/qtopia/fakeroot_ezx/usr/lib

#for KDevelop:
TEMPLATE = lib
