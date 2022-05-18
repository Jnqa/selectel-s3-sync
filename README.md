# Upload to Selectel S3 or Download from Selectel S3
it is not necessary to use the selectel, endpoint can be replaced.

## Usage

if you want to upload files:

```yml
        - uses: actions/checkout@v2
          # Make changes here
        - name: Sync with Seleclel (UPLOAD)
          uses: Jnqa/upload-to-s3-selectel@v3
          with:
            dirname: build/dir
            bucketname: my-bucket
            s3dirname: selectel-folder
            AWS_KEY_ID: ${{ secrets.AWS_KEY_ID }}
            AWS_ACCESS_KEY: ${{ secrets.AWS_ACCESS_KEY }}
```

if you want to download files:

```yml
        - uses: actions/checkout@v2
          # Make changes here
        - name: Sync with Seleclel (DOWNLOAD)
          uses: Jnqa/upload-to-s3-selectel@v3
          with:
            dirname: download-dir
            bucketname: my-bucket
            s3dirname: selectel-folder
            DOWNLOAD: true
            AWS_KEY_ID: ${{ secrets.AWS_KEY_ID }}
            AWS_ACCESS_KEY: ${{ secrets.AWS_ACCESS_KEY }}
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
| `bucketname` | Bucket/container name | `Yes` | `-` |
| `AWS_KEY_ID` | aws id | `Yes` | `-` |
| `AWS_ACCESS_KEY` | access key | `Yes` | `-` |
| `REGION` | If you need another region. | `No` | `-` |
| `DOWNLOAD` | If want to download a file. (`true`/`false`) | `No` | `false` |
| `FILENAME` | If want to download a single file. (`filename`) | `No` | `-` |
