qtopia_project(qtopia app)
TARGET = eyepiece
CONFIG += qtopia_main
CONFIG += no_quicklaunch
CONFIG += no_singleexec
CONFIG += release
#CONFIG += debug

AVAILABLE_LANGUAGES = en_US
LANGUAGES = $$AVAILABLE_LANGUAGES

HEADERS = \
 eyepiece.h \
 document.h \
 eyedrawwidget.h \
 eyeosd.h
SOURCES = \
 main.cpp \
 eyepiece.cpp \
 eyedrawwidget.cpp \
 eyeosd.cpp
FORMS += eyepieceui.ui
RESOURCES += res/eyepiece.qrc

pdfplugin.files=../pdfplugin/libpdfplugin.so
pdfplugin.path=/plugins
INSTALLS += pdfplugin

djvuplugin.files=../djvuplugin/libdjvuplugin.so
djvuplugin.path=/plugins
INSTALLS += djvuplugin

desktop.files = eyepiece.desktop
desktop.path = /apps/Applications
desktop.trtarget = eyepiece-nct
desktop.hint = "nct desktop"
INSTALLS += desktop

pics.files = pics/*
pics.path = /pics/eyepiece
pics.hint = pics
INSTALLS += pics

#help.source = help
#help.files = eyepiece.html
#help.hint = help
#INSTALLS += help

#target.hint = sxe
#target.domain = untrusted

pkg.name = eyepiece
pkg.desc = "PDF and DJVU viewer for Qtopia 4. Don't forget to install libs from http://code.google.com/p/eyepiece/downloads/list. Add string 'image/x.djvu djvu djv' to file <QTOPIADIR>/etc/mime.types"
pkg.version = 0.2.0-alpha
pkg.maintainer = pqlaz
pkg.license = GPL

#for KDevelop:
TEMPLATE = app
