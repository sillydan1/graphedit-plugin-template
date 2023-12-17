.PHONY: clean build

WRP=./gradlew

build: ${WRP}
	${WRP} build

installWindows: jar
	mkdir -p $(shell echo %APPDATA%)\graphedit\plugins
	cp build\libs\*.jar $(shell echo %APPDATA%)\graphedit\plugins

installMac: jar
	mkdir -p "${HOME}/Library/Application Support/Graphedit/plugins"
	cp build/libs/*.jar "${HOME}/Library/Application Support/Graphedit/plugins"

installLinux: jar
	mkdir -p ${HOME}/.local/graphedit/plugins
	cp build/libs/*.jar ${HOME}/.local/graphedit/plugins

jar: ${WRP}
	${WRP} jar

installDist: ${WRP}
	${WRP} installDist

jpackage: ${WRP}
	${WRP} jpackage

clean: ${WRP}
	${WRP} clean

${WRP}:
	gradle wrapper

nvimclean: # useful when adding new subprojects, or when the java plugin gets confused
	rm -rf ${WRP}
	rm -rf .project
	rm -rf .classpath
