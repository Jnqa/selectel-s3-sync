mkdir configs-to-upload | echo 'exists';
for fn in `jq -r '.configs[]' configs-list.json`; do cp -r "$fn" ./configs-to-upload/; done
pushd ./configs-to-upload/;
array=$(find * -mindepth 1);
for i in $array; do echo "https://502129.selcdn.ru/jnqa-test/configs/$i"; done
popd