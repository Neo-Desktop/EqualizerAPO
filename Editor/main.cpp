/*
	This file is part of EqualizerAPO, a system-wide equalizer.
	Copyright (C) 2015  Jonas Thedering

	This program is free software; you can redistribute it and/or modify
	it under the terms of the GNU General Public License as published by
	the Free Software Foundation; either version 2 of the License, or
	(at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License along
	with this program; if not, write to the Free Software Foundation, Inc.,
	51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
*/

#include <QTranslator>
#include <QApplication>
#include <QDir>
#include <QCommandLineParser>
#include "MainWindow.h"
#include "helpers/RegistryHelper.h"

using namespace std;

int main(int argc, char *argv[])
{
	int result = -1;
#ifdef _DEBUG
	//_CrtSetDbgFlag ( _CRTDBG_ALLOC_MEM_DF | _CRTDBG_LEAK_CHECK_DF );
	//_CrtSetBreakAlloc(3318);
#endif

	{
		QCoreApplication::addLibraryPath("qt");

		QApplication application(argc, argv);

		QTranslator qtTranslator;
		qtTranslator.load(QLocale::system(), ":/translations/qtbase", "_");
		application.installTranslator(&qtTranslator);

		QTranslator editorTranslator;
		editorTranslator.load(QLocale::system(), ":/translations/Editor", "_");
		application.installTranslator(&editorTranslator);

		QString configPath = QDir::currentPath();
		if(RegistryHelper::keyExists(APP_REGPATH) && RegistryHelper::valueExists(APP_REGPATH, L"ConfigPath"))
			configPath = QString::fromStdWString(RegistryHelper::readValue(APP_REGPATH, L"ConfigPath"));
		QDir configDir(configPath);

		MainWindow w(configDir);
		w.show();

		QCommandLineParser parser;
		parser.process(application);
		QStringList args = parser.positionalArguments();
		if(args.isEmpty())
			args = QStringList("config.txt");

		for(QString arg : args)
			w.load(configDir.absoluteFilePath(arg));

		w.doChecks();

		result = application.exec();
	}

	return result;
}
