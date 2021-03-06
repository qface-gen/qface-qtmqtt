TEMPLATE = app
TARGET = demoapp
DESTDIR = $$BUILD_DIR/bin

QT += qml
QT += quick

CONFIG += c++11

SOURCES += main.cpp

RESOURCES += qml.qrc

{% for module in system.modules %}
include( $$SOURCE_DIR/libs/lib_{{module|identifier}}/use_lib_{{module|identifier}}.pri )
{% endfor %}
