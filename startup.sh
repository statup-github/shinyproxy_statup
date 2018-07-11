cat /run/secrets/registry-password | docker login --username gitlab+deploy-token-2 --password-stdin registry.stablab.de:443
java -jar "/opt/shinyproxy/shinyproxy.jar"
