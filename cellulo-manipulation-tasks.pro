TEMPLATE = app

QT += qml quick widgets svg

# Add more folders to ship with the application, here
#folder_01.source = qml/cellulo-manipulation-tasks
#folder_01.target = qml
#DEPLOYMENTFOLDERS = folder_01

# Additional import path used to resolve QML modules in Creator's code model
QML_IMPORT_PATH =


RESOURCES += \
    code.qrc \
    assets.qrc


# The .cpp file which was generated for your project. Feel free to hack it.
SOURCES += main.cpp

# Installation path
# target.path =

# Default rules for deployment.
include(deployment.pri)

OTHER_FILES += \
    qml/cellulo-manipulation-tasks/FindSubmarines.qml \
    qml/cellulo-manipulation-tasks/Task.qml \
    qml/cellulo-manipulation-tasks/CrackTheCode.qml \
    qml/cellulo-manipulation-tasks/FeelTheGeometry.qml \
    qml/cellulo-manipulation-tasks/ReMove.qml \
    qml/cellulo-manipulation-tasks/Rollercoaster.qml \
    qml/cellulo-manipulation-tasks/main.qml \
    qml/cellulo-manipulation-tasks/MainMenu.qml \
    qml/cellulo-manipulation-tasks/FollowPath.qml \
    qml/cellulo-manipulation-tasks/Button.qml \
    qml/cellulo-manipulation-tasks/StateEngine.qml
