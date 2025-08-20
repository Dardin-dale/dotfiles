#"$HOME/.cargo/env"

# set dev PATH Envs DYNOTAG
export JAVA_HOME=/opt/swx/java
export DART_HOME=/opt/swx/dart
export ANT_HOME=/opt/swx/ant
export GROOVY_HOME=/opt/swx/groovy
export CATALINA_HOME=/opt/swx/tomcat
export DARTDOCS_HOME=/opt/swx/dartdocs
export HBASE_HOME=/opt/hbase
export PATH=$PATH:$JAVA_HOME/bin
export PATH=$PATH:$DART_HOME/dart-sdk/bin
export PATH=$PATH:$ANT_HOME/bin
export PATH=$PATH:$GROOVY_HOME/bin
export PATH=$PATH:$HBASE_HOME/bin
. "$HOME/.cargo/env"
export IVY_HOME=/opt/swx/ivy
export PATH=$HOME/development/flutter/bin:$PATH
