#-------------------------------------------------
#
# Project created by QtCreator 2014-10-21T22:44:17
#
#-------------------------------------------------

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = Editor
TEMPLATE = app

PRECOMPILED_HEADER = stable.h
QMAKE_CXXFLAGS_WARN_ON -= -w34100
QMAKE_LFLAGS += /STACK:32000000

DEFINES += _UNICODE

SOURCES += main.cpp\
	../helpers/LogHelper.cpp \
	../helpers/StringHelper.cpp \
	../helpers/RegistryHelper.cpp \
	IFilterGUIFactory.cpp \
	IFilterGUI.cpp \
	guis/PreampFilterGUI.cpp \
	guis/PreampFilterGUIFactory.cpp \
	guis/CommentFilterGUIFactory.cpp \
	guis/CommentFilterGUI.cpp \
	FilterTable.cpp \
	../filters/PreampFilter.cpp \
	../filters/PreampFilterFactory.cpp \
	../helpers/MemoryHelper.cpp \
	FilterTableRow.cpp \
	FilterTemplate.cpp \
	guis/DeviceFilterGUI.cpp \
	guis/DeviceFilterGUIFactory.cpp \
	../DeviceAPOInfo.cpp \
	guis/DeviceFilterGUIDialog.cpp \
	../filters/DeviceFilterFactory.cpp \
	guis/ChannelFilterGUIDialog.cpp \
	guis/ChannelFilterGUI.cpp \
	guis/ChannelFilterGUIFactory.cpp \
	guis/BiQuadFilterGUI.cpp \
	../filters/BiQuad.cpp \
	../filters/BiQuadFilter.cpp \
	../filters/BiQuadFilterFactory.cpp \
	guis/BiQuadFilterGUIFactory.cpp \
	guis/CopyFilterGUIFactory.cpp \
	guis/CopyFilterGUI.cpp \
	guis/CopyFilterGUIConnectionItem.cpp \
	guis/CopyFilterGUIChannelItem.cpp \
	../filters/CopyFilter.cpp \
	../filters/CopyFilterFactory.cpp \
	../IFilter.cpp \
	guis/CopyFilterGUIScene.cpp \
	guis/CopyFilterGUIForm.cpp \
	guis/CopyFilterGUIRow.cpp \
	helpers/GUIChannelHelper.cpp \
	../helpers/ChannelHelper.cpp \
	guis/DelayFilterGUI.cpp \
	guis/DelayFilterGUIFactory.cpp \
	../filters/DelayFilter.cpp \
	../filters/DelayFilterFactory.cpp \
	guis/IncludeFilterGUI.cpp \
	guis/IncludeFilterGUIFactory.cpp \
	widgets/ResizingLineEdit.cpp \
	widgets/ChannelGraphScene.cpp \
	widgets/ChannelGraphItem.cpp \
	guis/ChannelFilterGUIScene.cpp \
	guis/ChannelFilterGUIChannelItem.cpp \
	guis/GraphicEQFilterGUIFactory.cpp \
	guis/GraphicEQFilterGUI.cpp \
	../filters/GraphicEQFilter.cpp \
	../filters/GraphicEQFilterFactory.cpp \
	../libHybridConv-0.1.1/libHybridConv_eapo.cpp \
	../helpers/GainIterator.cpp \
	guis/GraphicEQFilterGUIScene.cpp \
	widgets/FrequencyPlotView.cpp \
	widgets/FrequencyPlotHRuler.cpp \
	widgets/FrequencyPlotVRuler.cpp \
	widgets/FrequencyPlotItem.cpp \
	guis/GraphicEQFilterGUIItem.cpp \
	guis/GraphicEQFilterGUIView.cpp \
	widgets/FrequencyPlotScene.cpp \
	widgets/CompactToolBar.cpp \
	guis/ConvolutionFilterGUIFactory.cpp \
	guis/ConvolutionFilterGUI.cpp \
	helpers/DisableWheelFilter.cpp \
	widgets/EscapableLineEdit.cpp \
	MainWindow.cpp \
	guis/StageFilterGUI.cpp \
	guis/StageFilterGUIFactory.cpp \
	guis/ExpressionFilterGUIFactory.cpp \
	widgets/ResizeCorner.cpp \
	AnalysisPlotView.cpp \
	AnalysisPlotScene.cpp \
	../FilterEngine.cpp \
	../FilterConfiguration.cpp \
	../filters/ChannelFilterFactory.cpp \
	../filters/ExpressionFilterFactory.cpp \
	../filters/IfFilterFactory.cpp \
	../filters/StageFilterFactory.cpp \
	../filters/ConvolutionFilterFactory.cpp \
	../filters/IIRFilter.cpp \
	../filters/IIRFilterFactory.cpp \
	../filters/IncludeFilterFactory.cpp \
	../filters/ChannelFilter.cpp \
	../filters/ConvolutionFilter.cpp \
	../parser/RegexFunctions.cpp \
	../parser/RegistryFunctions.cpp \
	../parser/StringOperators.cpp \
	AnalysisThread.cpp \
    widgets/ExponentialSpinBox.cpp \
    FilterTableMimeData.cpp

HEADERS  += \
	../helpers/LogHelper.h \
	../helpers/StringHelper.h \
	../helpers/RegistryHelper.h \
	IFilterGUIFactory.h \
	stable.h \
	IFilterGUI.h \
	guis/PreampFilterGUI.h \
	guis/PreampFilterGUIFactory.h \
	guis/CommentFilterGUIFactory.h \
	guis/CommentFilterGUI.h \
	FilterTable.h \
	../filters/PreampFilter.h \
	../filters/PreampFilterFactory.h \
	../helpers/MemoryHelper.h \
	FilterTableRow.h \
	FilterTemplate.h \
	guis/DeviceFilterGUI.h \
	guis/DeviceFilterGUIFactory.h \
	../DeviceAPOInfo.h \
	guis/DeviceFilterGUIDialog.h \
	../filters/DeviceFilterFactory.h \
	guis/ChannelFilterGUIDialog.h \
	guis/ChannelFilterGUI.h \
	guis/ChannelFilterGUIFactory.h \
	guis/BiQuadFilterGUI.h \
	../filters/BiQuad.h \
	../filters/BiQuadFilter.h \
	../filters/BiQuadFilterFactory.h \
	guis/BiQuadFilterGUIFactory.h \
	guis/CopyFilterGUIFactory.h \
	guis/CopyFilterGUI.h \
	guis/CopyFilterGUIConnectionItem.h \
	guis/CopyFilterGUIChannelItem.h \
	../filters/CopyFilter.h \
	../filters/CopyFilterFactory.h \
	../IFilter.h \
	../IFilterFactory.h \
	guis/CopyFilterGUIScene.h \
	guis/CopyFilterGUIForm.h \
	guis/CopyFilterGUIRow.h \
	helpers/GUIChannelHelper.h \
	../helpers/ChannelHelper.h \
	guis/DelayFilterGUI.h \
	guis/DelayFilterGUIFactory.h \
	../filters/DelayFilter.h \
	../filters/DelayFilterFactory.h \
	guis/IncludeFilterGUI.h \
	guis/IncludeFilterGUIFactory.h \
	widgets/ResizingLineEdit.h \
	widgets/ChannelGraphScene.h \
	widgets/ChannelGraphItem.h \
	guis/ChannelFilterGUIScene.h \
	guis/ChannelFilterGUIChannelItem.h \
	guis/GraphicEQFilterGUIFactory.h \
	guis/GraphicEQFilterGUI.h \
	../filters/GraphicEQFilter.h \
	../filters/GraphicEQFilterFactory.h \
	../libHybridConv-0.1.1/libHybridConv_eapo.h \
	../helpers/GainIterator.h \
	guis/GraphicEQFilterGUIScene.h \
	widgets/FrequencyPlotView.h \
	widgets/FrequencyPlotHRuler.h \
	widgets/FrequencyPlotVRuler.h \
	widgets/FrequencyPlotItem.h \
	guis/GraphicEQFilterGUIItem.h \
	guis/GraphicEQFilterGUIView.h \
	widgets/FrequencyPlotScene.h \
	widgets/CompactToolBar.h \
	guis/ConvolutionFilterGUIFactory.h \
	guis/ConvolutionFilterGUI.h \
	helpers/DisableWheelFilter.h \
	widgets/EscapableLineEdit.h \
	../version.h \
	../stdafx.h \
	MainWindow.h \
	guis/StageFilterGUI.h \
	guis/StageFilterGUIFactory.h \
	guis/ExpressionFilterGUIFactory.h \
	widgets/ResizeCorner.h \
	AnalysisPlotView.h \
	AnalysisPlotScene.h \
	../FilterEngine.h \
	../FilterConfiguration.h \
	../filters/ChannelFilterFactory.h \
	../filters/ExpressionFilterFactory.h \
	../filters/IfFilterFactory.h \
	../filters/StageFilterFactory.h \
	../filters/ConvolutionFilterFactory.h \
	../filters/IIRFilter.h \
	../filters/IIRFilterFactory.h \
	../filters/IncludeFilterFactory.h \
	../filters/ChannelFilter.h \
	../filters/ConvolutionFilter.h \
	../parser/RegexFunctions.h \
	../parser/RegistryFunctions.h \
	../parser/StringOperators.h \
	AnalysisThread.h \
    widgets/ExponentialSpinBox.h \
    FilterTableMimeData.h

FORMS    += \
	guis/PreampFilterGUI.ui \
	guis/CommentFilterGUI.ui \
	FilterTableRow.ui \
	guis/DeviceFilterGUI.ui \
	guis/DeviceFilterGUIDialog.ui \
	guis/ChannelFilterGUIDialog.ui \
	guis/ChannelFilterGUI.ui \
	guis/BiQuadFilterGUI.ui \
	guis/CopyFilterGUI.ui \
	guis/CopyFilterGUIRow.ui \
	guis/DelayFilterGUI.ui \
	guis/IncludeFilterGUI.ui \
	guis/GraphicEQFilterGUI.ui \
	guis/ConvolutionFilterGUI.ui \
	MainWindow.ui \
	guis/StageFilterGUI.ui

INCLUDEPATH += $$PWD/.. "C:/Program Files/libsndfile/include" "C:/Program Files/fftw3" "C:/Program Files/muparserx_v3_0_1/parser"
LIBS += advapi32.lib version.lib ole32.lib Shlwapi.lib libsndfile-1.lib libfftw3f-3.lib

build_pass:CONFIG(debug, debug|release) {
	LIBS += muparserxd.lib
} else {
	LIBS += muparserx.lib
}

contains(QT_ARCH, x86_64) {
	QMAKE_LIBDIR += "C:/Program Files/libsndfile/lib" "C:/Program Files/fftw3" "C:/Program Files/muparserx_v3_0_1/lib64"
} else {
	QMAKE_LIBDIR += "C:/Program Files (x86)/libsndfile/lib" "C:/Program Files (x86)/fftw3" "C:/Program Files/muparserx_v3_0_1/lib"
}

RESOURCES += \
	Editor.qrc
TRANSLATIONS += translations/Editor_de.ts

RC_ICONS = icons/accessories-text-editor.ico

DISTFILES +=
