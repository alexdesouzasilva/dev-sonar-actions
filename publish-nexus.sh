#!/bin/bash


# Parâmetros do Nexus
NEXUS_URL="http://localhost:8081/repository"
REPOSITORY_ID="nexus-snapshots"  # ou nexus-snapshots
ARTIFACT_VERSION="0.0.5-SNAPSHOT"         # Defina a versão do artefato
GROUP_ID="br.com.devsenior"
ARTIFACT_ID="dev-sonar-actions"
PACKAGING="jar"                  # Tipo do artefato (jar, war, etc.)
FILE_PATH="./target/dev-sonar-actions.jar"  # Caminho do arquivo JAR/WAR

mvn deploy:deploy-file \
  -DgroupId=$GROUP_ID \
  -DartifactId=$ARTIFACT_ID \
  -Dversion=$ARTIFACT_VERSION \
  -Dpackaging=$PACKAGING \
  -Dfile=$FILE_PATH \
  -DrepositoryId=$REPOSITORY_ID \
  -Durl=$NEXUS_URL/devops-maven-snapshot \
  -DgeneratePom=true \
  -DupdateReleaseInfo=true \
  -Dusername=$USERNAME \
  -Dpassword=$PASSWORD
  