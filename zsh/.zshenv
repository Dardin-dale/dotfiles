#"$HOME/.cargo/env"

# set dev PATH Envs DYNOTAG
export JAVA_HOME=/opt/swx/java
export DART_HOME=/opt/swx/dart
export FLUTTER_HOME=/opt/swx/flutter
export ANT_HOME=/opt/swx/ant
export GROOVY_HOME=/opt/swx/groovy
export CATALINA_HOME=/opt/swx/tomcat
export DARTDOCS_HOME=/opt/swx/dartdocs
export HBASE_HOME=/opt/hbase
export PATH=$PATH:$JAVA_HOME/bin
export PATH=$PATH:$DART_HOME/bin
export PATH=$PATH:$FLUTTER_HOME/bin
export PATH=$PATH:$ANT_HOME/bin
export PATH=$PATH:$GROOVY_HOME/bin
export PATH=$PATH:$HBASE_HOME/bin
export PATH=$PATH:$HOME/.pub-cache/bin
. "$HOME/.cargo/env"
