#!/bin/bash

path=$(find ~/ -type d -name FBLA-Coding-master 2>/dev/null)

cd "$path"

test -d /Library/Java/JavaVirtualMachines/jdk-13* && java_path="/Library/Java/JavaVirtualMachines/jdk-13*.jdk" || java_path=$(find / -type d -name jdk-13*.jdk 2>/dev/null)

$java_path"/Contents/Home/bin/java" -classpath ".:sqlite-jdbc-3.27.2.1.jar" --module-path "javafx-sdk-13/lib" --add-modules javafx.controls,javafx.fxml,javafx.graphics,javafx.web -jar "FBLA-Coding.jar"
