# Upload to Selectel S3 or Download from Selectel S3
it is not necessary to use the selectel, endpoint can be replaced.

## Usage

if you want to upload files:

```yml
        - uses: actions/checkout@v2
          # Make changes here
        - name: Sync with Seleclel (UPLOAD)
          uses: Jnqa/selectel-s3-sync@v3
          with:
            dirname: build/dir
            bucketname: my-bucket
            s3dirname: selectel-folder
            SELECTEL_KEY_ID: ${{ secrets.SELECTEL_KEY_ID }}
            SELECTEL_ACCESS_KEY: ${{ secrets.SELECTEL_ACCESS_KEY }}
```

if you want to download files:

```yml
        - uses: actions/checkout@v2
          # Make changes here
        - name: Sync with Seleclel (DOWNLOAD)
          uses: Jnqa/selectel-s3-sync@v3
          with:
            dirname: download-dir
            bucketname: my-bucket
            s3dirname: selectel-folder
            DOWNLOAD: true
            SELECTEL_KEY_ID: ${{ secrets.SELECTEL_KEY_ID }}
            SELECTEL_ACCESS_KEY: ${{ secrets.SELECTEL_ACCESS_KEY }}
```

if you want to download a sinlge file:
```yml
            s3dirname: selectel/folder/from
            FILENAME: my-build.zip
            DOWNLOAD: true
            dirname: download/to/dir
```

### Action inputs

| Name | Description | Required | Default |
| --- | --- | --- | --- |
| `dirname` | Folder to upload. | `Yes` | `-` |
| `s3dirname` | Folder on S3(Simple Storage Service) to upload to. | `Yes` | `-` |
| `bucketname` | Bucket/container name. [containers](https://my.selectel.ru/storage/containers) | `Yes` | `-` |
| `SELECTEL_KEY_ID` | [Selectel id.](https://my.selectel.ru/storage/users) | `Yes` | `-` |
| `SELECTEL_ACCESS_KEY` | [Selectel access key.](https://my.selectel.ru/storage/users) | `Yes` | `-` |
| `ENDPOINT` | If you want to use another S3(Simple Storage Service). | `No` | `https://s3.selcdn.ru` |
| `REGION` | If you need another region. | `No` | `ru-1a` |
| `DOWNLOAD` | If want to download a file. (`true`/`false`) | `No` | `false` |
| `FILENAME` | If want to download a single file. (`filename`) | `No` | `-` |
