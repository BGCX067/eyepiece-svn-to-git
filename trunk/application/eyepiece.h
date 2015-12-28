#ifndef EYEPIECE_H
#define EYEPIECE_H

#include "ui_eyepieceui.h"
#include "document.h"
#include "eyeosd.h"

#include <QAction>
#include <QDocumentSelector>
#include <QPluginLoader>

//#include <QWaitWidget> //test

class Eyepiece : public QWidget, public Ui_Eyepiece
{
		Q_OBJECT
	public:
		Eyepiece ( QWidget *parent = 0, Qt::WFlags f = 0 );
		~Eyepiece();

	private:
		Document * document;
		EyeOSD     eyeOSD;
		QAction  * openAction;
		QAction  * rotateAction0;
		QAction  * rotateAction90;
		QAction  * rotateAction180;
		QAction  * rotateAction270;
		QDocumentSelector * documentSelector;
		QPluginLoader pluginLoader;
		QObject  * plugin;
		QString    contentID;        // mime ID
		QString    oldContID;

		void disableRotateActions();
		void enableRotateActions();
		void toggleWindowState();
		bool loadPlugin();
		void unloadPlugin();
		void onDocumentLoadError();
		//QWaitWidget * waitWidget; //test

	public slots:
		void setDocument ( const QString & filename );

	private slots:
		void on_okButton_clicked();
		void onOpen();
		void onRotate0();
		void onRotate90();
		void onRotate180();
		void onRotate270();
		void onPressedAtBottom();

		void onKeyClicked ( int );
		void openDocument ( const QContent & );
};

#endif // EYEPIECE_H
