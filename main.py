import os
import sys
from PyQt5.QtCore import QObject
from PyQt5.QtQml import QQmlApplicationEngine
from PyQt5.QtWidgets import QApplication

if __name__ == '__main__':
    myApp = QApplication(sys.argv)

    engine = QQmlApplicationEngine()
    context = engine.rootContext()
    context.setContextProperty("main", engine)

    engine.load('basic.qml')

    win = engine.rootObjects()[0]
    button = win.findChild(QObject, "myButton")
    def myFunction():
        foo = win.findChild(QObject, "ipaddress")
        print(foo.property("text"))
        foo1 = win.findChild(QObject, "name")
        print(foo1.property("text"))
        os.system("gnome-terminal -e 'roscore'")

    button.clicked.connect(myFunction)
    win.show()

    sys.exit(myApp.exec_())

