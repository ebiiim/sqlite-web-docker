> [!IMPORTANT]
> Now the original [coleifer/sqlite-web](https://github.com/coleifer/sqlite-web) has its own official Docker image.
> So it's time to archive this repository.

# sqlite-web-docker

[![GitHub](https://img.shields.io/github/license/ebiiim/sqlite-web-docker)](https://github.com/ebiiim/sqlite-web-docker/blob/main/LICENSE)
[![GitHub release (latest SemVer)](https://img.shields.io/github/v/release/ebiiim/sqlite-web-docker)](https://github.com/ebiiim/sqlite-web-docker/releases/latest)
[![Release](https://github.com/ebiiim/sqlite-web-docker/actions/workflows/release.yaml/badge.svg)](https://github.com/ebiiim/sqlite-web-docker/actions/workflows/release.yaml)


Yet another Docker image for [coleifer/sqlite-web](https://github.com/coleifer/sqlite-web).

## Usage

> 💡 Please read [sqlite-web docs](https://github.com/coleifer/sqlite-web/tree/master#command-line-options) before using this image.

The entrypoint is `sqlite_web --no-browser -H 0.0.0.0` so please give additional arguments and the DB path.

```
docker run [ARGS]... ghcr.io/ebiiim/sqlite-web[:VERSION] [ARGS]... <DB_PATH>
```

```sh
docker run --rm \
  -p 8080:8080 \
  -v /path/to/app.db:/data/app.db \
  ghcr.io/ebiiim/sqlite-web /data/app.db
```

**Read-only mode**

Set `-r` or `--read-only`

```diff
  docker run --rm \
    -p 8080:8080 \
    -v /path/to/app.db:/data/app.db \
-   ghcr.io/ebiiim/sqlite-web /data/app.db
+   ghcr.io/ebiiim/sqlite-web --read-only /data/app.db
```

**Password authentication**

Set `-P` or `--password` and store the password to `SQLITE_WEB_PASSWORD`.

```diff
  docker run --rm \
    -p 8080:8080 \
+   -e SQLITE_WEB_PASSWORD=hogehoge \
    -v /path/to/app.db:/database/app.db \
-   ghcr.io/ebiiim/sqlite-web /data/app.db
+   ghcr.io/ebiiim/sqlite-web --password /data/app.db
```

## Changelog

We use the same version as sqlite-web.

- 2023-04-06 v0.4.1
  - initial release
  - coleifer/sqlite-web: [0.4.1](https://github.com/coleifer/sqlite-web/commit/72ae4bd921c996be85a95eb7a202d46f4a438701) 2022-12-09
