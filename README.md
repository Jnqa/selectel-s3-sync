# Create Documentation and save as .md file
A GitHub action to create a md file for your repository from files with using [XML Documentation Comments](https://docs.microsoft.com/en-us/dotnet/csharp/language-reference/xmldoc/).

## Usage

if you want to upload files:

```yml
        - uses: actions/checkout@v2
          # Make changes here
        - name: Sync with Seleclel (UPLOAD)
          uses: Jnqa/upload-to-s3-selectel@v2
          with:
            dirname: build/dir
            bucketname: my-bucket
            s3dirname: selectel-folder
            AWS_ACCESS_KEY_ID_SELECTEL: ${{ secrets.SELECTEL_KEY_ID }}
            AWS_SECRET_ACCESS_KEY_SELECTEL: ${{ secrets.SELECTEL_ACCESS_KEY }}
```

if you want to download files:

```yml
        - uses: actions/checkout@v2
          # Make changes here
        - name: Sync with Seleclel (DOWNLOAD)
          uses: Jnqa/upload-to-s3-selectel@v2
          with:
            dirname: download-dir
            bucketname: my-bucket
            s3dirname: selectel-folder
            DOWNLOAD: true
            AWS_ACCESS_KEY_ID_SELECTEL: ${{ secrets.SELECTEL_KEY_ID }}
            AWS_SECRET_ACCESS_KEY_SELECTEL: ${{ secrets.SELECTEL_ACCESS_KEY }}
```

if you want to download sinlge file:
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
| `ENDPOINT` | If you want to use another S3(Simple Storage Service). | `https://s3.selcdn.ru` | `No` |
| `REGION` | If you need another region. | `No` | `ru-1a` |
| `DOWNLOAD` | If want to download file. (`true`/`false`) | `No` | `false` |
| `FILENAME` | If want to download single file. (`filename`) | `No` | `-` |
