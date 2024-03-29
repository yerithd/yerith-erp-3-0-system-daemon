
CONFIG += precompile_header 
#CONFIG += debug
CONFIG += qt
CONFIG += console
CONFIG += moc
CONFIG -= import_plugins

QT -= gui
QT += widgets
QT += sql
QT += dbus
QT += network

VERSION = 3.0

QMAKE_CXXFLAGS_RELEASE -= -O2
#QMAKE_CXXFLAGS_RELEASE += --coverage
#QMAKE_CXXFLAGS_RELEASE += -Wunused-parameter

QMAKE_CFLAGS_RELEASE -= -O2

DESTDIR = bin

MOC_DIR  = moc

OBJECTS_DIR = obj

PRECOMPILED_HEADER  = src/include/yerith-erp-3-0-precompiled-header.hpp
 
HEADERS = src/YRIruntimeverification_adaptor.h \
			src/IYRIruntimeverificationAdaptor_interface.h \
			src/dbus/YERITH_RUNTIME_VERIFIER.hpp \
			src/entities/yerith-erp-3-0-system-daemon-entity-alert-quantity-period-time.hpp \
			src/include/yerith-erp-3-0-system-daemon-abstract-entity.hpp \
			src/include/yerith-erp-3-0-system-daemon-alert-abstract-entity.hpp \
			src/include/yerith-erp-3-0-definition-oo-class-operators.hpp \
			src/include/yerith-erp-3-0-software-text-configuration.hpp \
		  src/utils/yerith-erp-3-0-system-daemon-utils.hpp \
			src/utils/yerith-erp-database-table-column.hpp \
			src/yerith-erp-3-0-system-daemon-db-backup-export-gz.hpp \
			src/yerith-erp-3-0-system-daemon-periode.hpp \
		  src/yerith-erp-3-0-system-daemon-database.hpp \
		  src/yerith-erp-3-0-system-daemon-quantite.hpp \
		  src/yerith-erp-3-0-system-daemon-logger.hpp \
		  src/yerith-erp-3-0-system-daemon-config.hpp
 
SOURCES = src/YRIruntimeverification_adaptor.cpp \
			src/IYRIruntimeverificationAdaptor_interface.cpp \
			src/dbus/YERITH_RUNTIME_VERIFIER.cpp \
			src/entities/yerith-erp-3-0-system-daemon-entity-alert-quantity-period-time.cpp \
			src/include/yerith-erp-3-0-system-daemon-abstract-entity.cpp \
			src/include/yerith-erp-3-0-system-daemon-alert-abstract-entity.cpp \
		  src/utils/yerith-erp-3-0-system-daemon-utils.cpp \
		  src/yerith-erp-3-0-system-daemon.cpp \
			src/utils/yerith-erp-database-table-column.cpp \
			src/yerith-erp-3-0-system-daemon-db-backup-export-gz.cpp \
		  src/yerith-erp-3-0-system-daemon-periode.cpp \
		  src/yerith-erp-3-0-system-daemon-database.cpp \
		  src/yerith-erp-3-0-system-daemon-quantite.cpp \
		  src/yerith-erp-3-0-system-daemon-logger.cpp \
		  src/yerith-erp-3-0-system-daemon-config.cpp

# install
target.path = yerith-erp-3-0-system-daemon-3.0
sources.files = $$SOURCES $$HEADERS *.pro
sources.path = .
INSTALLS += target sources
