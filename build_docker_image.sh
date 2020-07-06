# 190815 7392 Reza Farrahi (reza.farrahi@nakisa.com)

version_number=$(cat docker_tag_version.txt); version_number=$((10#$version_number + 1)); version_number=$(printf "%03d" $version_number); echo $version_number; echo "$version_number" > docker_tag_version.txt;
#

docker build --no-cache -t imriss/mysql-operator8:"$version_number" -f Dockerfile .
# docker push imriss/mysql-operator8:"$version_number"
#
docker build --no-cache -t imriss/mysql-operator-sidecar8:"$version_number" -f Dockerfile.sidecar .
# docker push imriss/mysql-operator-sidecar8:"$version_number"
#
docker build --no-cache -t imriss/mysql-operator-orchestrator8:"$version_number" -f Dockerfile.orchestrator .
# docker push imriss/mysql-operator-orchestrator8:"$version_number"
#

