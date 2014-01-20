#-------------------------------------------------
#
# Project created by QtCreator 2013-12-13T07:25:27
#
#-------------------------------------------------

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = player_tester
TEMPLATE = app

DEPENDPATH += .
INCLUDEPATH += .


SOURCES += main.cpp\
    fenPrincipale.cpp

HEADERS  += \
    fenPrincipale.h

FORMS    += \
    fenPrincipale.ui

include(../scleHooq/hooq.pri)

win32 {
        SOURCES += WinDll.cpp
        target.path = $${OUT_PWD}/../hooq-release
        CONFIG(debug, debug|release) {
                target.path = $${OUT_PWD}/../hooq-debug
        }
        INSTALLS += target
}

unix {
        target.path = /${DESTDIR}$$BINDIR
        INSTALLS += target
}
