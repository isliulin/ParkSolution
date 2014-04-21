QT       += core gui sql webkitwidgets

MYTARGET = $$quote( CommonModule%1 )
MYDESTDIR = $$quote( ../LibExeFiles/%1 )
MYDESTLIB = $$quote( %1/lib%2%3.a )

#INCLUDEPATH += ./Mysql/include
#LIBS += ./Mysql/lib/liblibmysql.a

Debug {
    TARGET = $$sprintf( $$MYTARGET, "Debug" )
    DESTDIR = $$sprintf( $$MYDESTDIR, "Debug" )

    #LIBS += $$sprintf( $$MYDESTLIB, $$DESTDIR, "NetworkLibrary", "Debug" )
}

Release {
    TARGET = $$sprintf( $$MYTARGET, "" )
    DESTDIR = $$sprintf( $$MYDESTDIR, "Release" )

    #LIBS += $$sprintf( $$MYDESTLIB, $$DESTDIR, "NetworkLibrary", "" )
}

TEMPLATE = lib

DEFINES += COMMONMODULE_LIBRARY

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

HEADERS += \
    qbasethread.h \
    commonmodule_global.h \
    CommonEnumType.h \
    CommonStructType.h \
    CommonTypedef.h \
    CommonHeader.h \
    qcommonfunction.h \
    qdlglogin.h \
    qshapedform.h \
    qhoverframe.h \
    qserializeevent.h \
    qserializethread.h

SOURCES += \
    qbasethread.cpp \
    qcommonfunction.cpp \
    qdlglogin.cpp \
    qshapedform.cpp \
    qhoverframe.cpp \
    qserializeevent.cpp \
    qserializethread.cpp

FORMS += \
    qdlglogin.ui \
    qshapedform.ui \
    qhoverframe.ui