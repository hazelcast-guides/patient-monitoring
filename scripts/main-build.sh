#!/bin/sh

project_home=$(cd .. && pwd)
src_dir=$project_home/src/main/java/com/hazelcast/app
lib_dir=/[INSTALLATION_PATH]/hazelcast-5.1.4/lib
class_dir=$project_home/target/classes


javac -d "$class_dir" -cp ".:${lib_dir}/*:${class_dir}" "$src_dir"/common/connection/ClientConnection.java
javac -d "$class_dir" -cp ".:${lib_dir}/*:${class_dir}" "$src_dir"/common/person/Patient.java
javac -d "$class_dir" -cp ".:${lib_dir}/*:${class_dir}" "$src_dir"/common/person/PatientUtils.java
javac -d "$class_dir" -cp ".:${lib_dir}/*:${class_dir}" "$src_dir"/common/person/Profile.java
javac -d "$class_dir" -cp ".:${lib_dir}/*:${class_dir}" "$src_dir"/common/person/ProfileUtils.java
javac -d "$class_dir" -cp ".:${lib_dir}/*:${class_dir}" "$src_dir"/common/resource/Resource.java


javac -d "$class_dir" -cp ".:${lib_dir}/*:${class_dir}" "$src_dir"/sink/GraphiteMetric.java
javac -d "$class_dir" -cp ".:${lib_dir}/*:${class_dir}" "$src_dir"/sink/Utils.java


javac -d "$class_dir" -cp ".:${lib_dir}/*:${class_dir}" "$src_dir"/source/MessageBusImpl.java
javac -d "$class_dir" -cp ".:${lib_dir}/*:${class_dir}" "$src_dir"/source/MessageBusFactory.java


javac -d "$class_dir" -cp ".:${lib_dir}/*:${class_dir}" "$src_dir"/stream/pipeline/PipelineImpl.java
javac -d "$class_dir" -cp ".:${lib_dir}/*:${class_dir}" "$src_dir"/stream/pipeline/PipelineFactory.java
javac -d "$class_dir" -cp ".:${lib_dir}/*:${class_dir}" "$src_dir"/stream/rulesengine/RulesEngine.java
javac -d "$class_dir" -cp ".:${lib_dir}/*:${class_dir}" "$src_dir"/stream/ProcessEngine.java


javac -d "$class_dir" -cp ".:${lib_dir}/*:${class_dir}" "$src_dir"/Main.java


java -cp ".:${lib_dir}/*:${class_dir}" com.hazelcast.app.Main --add-modules java.se --add-exports java.base/jdk.internal.ref=ALL-UNNAMED --add-opens java.base/java.lang=ALL-UNNAMED --add-opens java.base/sun.nio.ch=ALL-UNNAMED --add-opens java.management/sun.management=ALL-UNNAMED --add-opens jdk.management/com.sun.management.internal=ALL-UNNAMED



exit