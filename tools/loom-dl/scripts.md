````shell
docker pull node
````

````shell
docker run -it --rm node bash
````

## Build

````shell
docker build -t "dayan3847/loom-dl" .
````

## Push

````shell
docker push "dayan3847/loom-dl"
````

````shell
docker run -it --rm "dayan3847/loom-dl" loom-dl --version
````

````shell
docker run -it --rm -v "${PWD}/:/app/" "dayan3847/loom-dl" loom-dl --version
````

# videos
https://cdn.loom.com/mediametadata/captions/e3ce838a4de94cfa8930888ce693b4e5-2.vtt?Policy=eyJTdGF0ZW1lbnQiOlt7IlJlc291cmNlIjoiaHR0cHM6Ly9jZG4ubG9vbS5jb20vbWVkaWFtZXRhZGF0YS9jYXB0aW9ucy9lM2NlODM4YTRkZTk0Y2ZhODkzMDg4OGNlNjkzYjRlNS0yLnZ0dCIsIkNvbmRpdGlvbiI6eyJEYXRlTGVzc1RoYW4iOnsiQVdTOkVwb2NoVGltZSI6MTczODA4MTc2NH19fV19&Key-Pair-Id=APKAJQIC5BGSW7XXK7FQ&Signature=bBQ6lSbgSEnFeCJKcNqj-FkttrQyekztsbKhgxrIZ0J5eQW58QslVN43dPcFwVnaP%7ElZLYszwZBATkoBsOvjGIm%7E0YaqfRw2ZiMuliv5-VEWWPv5s-zXFjpTYpbfJ9aOA3yrSb6hta8dSv7-iiVFhvlr0eadZN6E4T-FzK8YHjR%7EOpbqOn-uBUkQChu4MBBDhcCbl-CdUN8TDuWT1gjMzlvFI%7EfskjGRdEISvNR0jgFX94UgrnJ1Eah1WttRJBI%7E3saefKD8h2dQztUiU99KdNR%7EJYGLHPx%7Evz3XKsaL%7EUszcueWfKfhvAnZmdWQwoJNfWj9Fc46GClYy%7EIYsHaYLw__
https://cdn.loom.com/mediametadata/captions/e3ce838a4de94cfa8930888ce693b4e5-2.vtt?Policy=eyJTdGF0ZW1lbnQiOlt7IlJlc291cmNlIjoiaHR0cHM6Ly9jZG4ubG9vbS5jb20vbWVkaWFtZXRhZGF0YS9jYXB0aW9ucy9lM2NlODM4YTRkZTk0Y2ZhODkzMDg4OGNlNjkzYjRlNS0yLnZ0dCIsIkNvbmRpdGlvbiI6eyJEYXRlTGVzc1RoYW4iOnsiQVdTOkVwb2NoVGltZSI6MTczODA4MTc5NH19fV19&Key-Pair-Id=APKAJQIC5BGSW7XXK7FQ&Signature=kKyjWCNl7IHpeUk--%7EYLfJ0yRhVGFA2hK08vTKMcb6MxB5xLb%7EQ%7Et%7EmEtGhkv4Zc9ObkBUzeUdGVyIxZAc9WRNJQ5YecMYCxhF7mUHG31G40qQe2pQN0Wm1mLyjJW4tfmZMqpjW-5KoCJmVMY1chP%7ER6zRweZaLhbjfcgryYOIMkTkZ641L7lwSEjB2jcrAXKQZZ7HyHcEzr4OHTfKYSRXHWB4norgWER4sbBBaYS9W9E0PjSSfC5joFBT6R-qHwrNNQ5He1b7snahasj-AMr7gNeRwPV0OZ%7EaJ%7E5wGYXaXqC-hTgcxXAFjMoR%7EKG4dAld9YcFZ4-cdwRv8uZCiNqA__

````shell
docker run -it --rm -v "${PWD}/data/:/app/" "dayan3847/loom-dl" loom-dl --url https://www.loom.com/share/e3ce838a4de94cfa8930888ce693b4e5 --out logi-1.mp4
````

````shell
docker run -it --rm -v "${PWD}/data/:/app/" "dayan3847/loom-dl" loom-dl --url https://www.loom.com/share/dd28ac3e0cfb4fad9fcf82aadd3b28bb --out logi-2.mp4
````

````shell
docker run -it --rm -v "${PWD}/data/:/app/" "dayan3847/loom-dl" loom-dl --url https://www.loom.com/share/fc8ba1bc5617426a952a3e2ddedcdb62 --out logi-3.mp4
````

````shell
docker run -it --rm -v "${PWD}/data/:/app/" "dayan3847/loom-dl" loom-dl --url https://www.loom.com/share/776460734f77475392f701076bf932b6 --out logi-4.mp4
#https://cdn.loom.com/mediametadata/captions/776460734f77475392f701076bf932b6-2.vtt?Policy=eyJTdGF0ZW1lbnQiOlt7IlJlc291cmNlIjoiaHR0cHM6Ly9jZG4ubG9vbS5jb20vbWVkaWFtZXRhZGF0YS9jYXB0aW9ucy83NzY0NjA3MzRmNzc0NzUzOTJmNzAxMDc2YmY5MzJiNi0yLnZ0dCIsIkNvbmRpdGlvbiI6eyJEYXRlTGVzc1RoYW4iOnsiQVdTOkVwb2NoVGltZSI6MTczODE2NTA2M319fV19&Key-Pair-Id=APKAJQIC5BGSW7XXK7FQ&Signature=jL-yCoCd%7Eph3dsk4f0mKe2TlTQ%7Erw8IeukZU6VTqYm2SL9zIqlGxCFbRHAN-HFX6cQeK62mHXAxA6oSfmKhvVE6DxzPtIPInOb5CKzgEfFvxZ-BWcBuxUxdnu%7EvXYDqcvsaRcrvTLFclMKHJbeh1hAv6K4%7ET6O7p1VMzV70GPAJ56KqmidZqis%7EEbwYRDVXz%7ER0iZ2EMO0XJcDyW1eVDSwMVCDsH4xR7ACgawNyWprkgf-sbnxFQdGrnreSgzYXydY8VN-B-9go2wzqN-go3vlA6UflgVmodySDxR2mDC5T7Nzrdf%7EVPA7OlygyAsj1EFuvEVR35q1qU87V04yvSLQ__
````

````shell
docker run -it --rm -v "${PWD}/data/:/app/" "dayan3847/loom-dl" loom-dl --url https://www.loom.com/share/6fe7dd512de14177af892f1452d73892 --out logi-21.mp4
````

````shell
docker run -it --rm -v "${PWD}/data/:/app/" "dayan3847/loom-dl" loom-dl --url https://www.loom.com/share/7cf60180f1f846099d9f56faa2583aac --out logi-22.mp4
````

````shell
docker run -it --rm -v "${PWD}/data/:/app/" "dayan3847/loom-dl" loom-dl --url https://www.loom.com/share/f3e5848370d4434992ced664ff683711 --out logi-23.mp4
````

````shell
docker run -it --rm -v "${PWD}/data/:/app/" "dayan3847/loom-dl" loom-dl --url https://www.loom.com/share/3f56a49aa48d4e2c9144d13fdb2649ef --out logi-24.mp4
````

````shell
docker run -it --rm -v "${PWD}/data/:/app/" "dayan3847/loom-dl" loom-dl --url https://www.loom.com/share/c75a75acf8da44ec8b99d6b448365de5 --out logi-25.mp4
````

# asd

````shell
docker run -it --rm -v "${PWD}/data/:/app/" "dayan3847/loom-dl" loom-dl --url https://www.loom.com/share/8a4e3638f26a4cefb72087cffdd7a741 --out logi-31.mp4
````

````shell
docker run -it --rm -v "${PWD}/data/:/app/" "dayan3847/loom-dl" loom-dl --url https://www.loom.com/share/9b349af2207c4041b8c158155ab2752f --out "Testing to add tracking number automatically from Zonos.mp4"
````
