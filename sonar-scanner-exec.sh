#!/bin/bash
SONAR_HOST_URL="http://localhost:9000"
SONAR_TOKEN="squ_674d59260f8a4ee7bdcceddfb0126405979f3429"
sonar-scanner \
            -Dsonar.projectKey=dev-sonar-actions \
            -Dsonar.sources=src \
            -Dsonar.host.url=$SONAR_HOST_URL \
            -Dsonar.login=$SONAR_TOKEN \
            -Dsonar.version=0.0.5-RC \
            -Dsonar.java.binaries=.