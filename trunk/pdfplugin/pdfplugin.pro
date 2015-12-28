qtopia_project(qtopia plugin)

CONFIG += release
CONFIG += no_pkg

HEADERS += pdfplugin.h
SOURCES += pdfplugin.cpp

INCLUDEPATH += ../application
INCLUDEPATH += /usr/include/poppler/qt4

# Dependencies
LIBS += -lpoppler-qt4

# Adjust according to your environment:
#INCLUDEPATH += /home/pqlaz/Desktop/qtopia/fakeroot_ezx/usr/include/poppler/qt4
#LIBS += -L/home/pqlaz/Desktop/qtopia/fakeroot_ezx/usr/lib

#for KDevelop:
TEMPLATE = lib
