mkdir configs-to-upload | echo 'exists';
for fn in `jq -r '.configs[]' configs-list.json`; do cp -r "$fn" ./configs-to-upload/; done
array=$(find ./configs-to-upload/ -mindepth 2)
for i in $array; do echo "https://6a39d29f-7919-4a2c-b54e-f8066f9effbb.selcdn.net/jnqa-test/configs$(echo $i | sed -e 's/.//')"; done