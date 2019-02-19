$ sudo apt-get install fcitx-frontend-qt5
plainchant@plainchant-pct:~/workspace/work_tools$ sudo cp /usr/lib/x86_64-linux-gnu/qt5/plugins/platforminputcontexts/libfcitxplatforminputcontextplugin.so /opt/Qt5.9.0/Tools/QtCreator/lib/Qt/plugins/platforminputcontexts/
[sudo] password for plainchant:
plainchant@plainchant-pct:~/workspace/work_tools$ sudo chmod +x /opt/Qt5.9.0/Tools/QtCreator/lib/Qt/plugins/platforminputcontexts/libfcitxplatforminputcontextplugin.so
plainchant@plainchant-pct:/opt/Qt5.9.0/5.9/gcc_64/plugins/platforminputcontexts$ sudo cp /usr/lib/x86_64-linux-gnu/qt5/plugins/platforminputcontexts/libfcitxplatforminputcontextplugin.so ./
[sudo] password for plainchant:
plainchant@plainchant-pct:/opt/Qt5.9.0/5.9/gcc_64/plugins/platforminputcontexts$ ls
libcomposeplatforminputcontextplugin.so  libfcitxplatforminputcontextplugin.so  libibusplatforminputcontextplugin.so  libqtvirtualkeyboardplugin.so
plainchant@plainchant-pct:/opt/Qt5.9.0/5.9/gcc_64/plugins/platforminputcontexts$ sudo chmod +x libfcitxplatforminputcontextplugin.so


