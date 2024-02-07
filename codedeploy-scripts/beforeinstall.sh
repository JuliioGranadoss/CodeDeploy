#!/bin/bash

cd /opt/codedeploy-agent/deployment-root/$DEPLOYMENT_GROUP_ID/$DEPLOYMENT_ID/deployment-archive

# Hacer el gradlew ejecutable
chmod +x gradlew

# Ejecutar el gradlew para generar el war
./gradlew war