# graphedit-plugin-template
Template repository for creating graphedit plugins

Make sure to edit the [`IPlugin service file`](src/main/resources/META-INF/services/dk.gtz.graphedit.spi.IPlugin) when changing the filename or package of `ExamplePlugin.java`.

Also make sure to change the gradle project name in [`settings.gradle`](settings.gradle).

## Build
To build the project, make sure you have gradle installed.
```sh
gradle build
```

## Install
This repository also provides a convenient makefile that can install the jar file(s) at the appropriate plugin directory for you.
```sh
make installLinux   # for linux
make installMac     # for macos
make installWindows # for windows
```
