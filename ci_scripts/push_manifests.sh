export IMAGE_TAG=$(cat VERSION)

docker manifest create --amend cachengo/hssdb-synchronizer:$IMAGE_TAG cachengo/hssdb-synchronizer-x86_64:$IMAGE_TAG cachengo/hssdb-synchronizer-aarch64:$IMAGE_TAG
docker manifest push cachengo/hssdb-synchronizer:$IMAGE_TAG
