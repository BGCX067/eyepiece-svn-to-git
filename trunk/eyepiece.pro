qtopia_project(subdirs)

CONFIG += ordered

SUBDIRS = \
	application \
	pdfplugin \
	djvuplugin

#for KDevelop:
TEMPLATE = subdirs
