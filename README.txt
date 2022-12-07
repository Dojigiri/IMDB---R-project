Description
In this project, I will try to answer if movies have increased in length the last years (since 2010).
To perform this hypothesis testing, I used the dataset "title.basics.tsv.gz", downloaded from IMDb Datasets (https://www.imdb.com/interfaces/).

License
Subsets of IMDb data are available for access to customers for personal and non-commercial use. 

Data Location
The dataset files can be accessed and downloaded from https://datasets.imdbws.com/. The data is refreshed daily.

Dataset legend
title.basics.tsv.gz - Contains the following information for titles:

    tconst (string) - alphanumeric unique identifier of the title
    titleType (string) – the type/format of the title (e.g. movie, short, tvseries, tvepisode, video, etc)
    primaryTitle (string) – the more popular title / the title used by the filmmakers on promotional materials at the point of release
    originalTitle (string) - original title, in the original language
    isAdult (boolean) - 0: non-adult title; 1: adult title
    startYear (YYYY) – represents the release year of a title. In the case of TV Series, it is the series start year
    endYear (YYYY) – TV Series end year. ‘\N’ for all other title types
    runtimeMinutes – primary runtime of the title, in minutes
    genres (string array) – includes up to three genres associated with the title

Relevant articles on this subject
https://www.whattowatch.com/features/are-movies-really-getting-longer
https://edition.cnn.com/2022/02/06/entertainment/movie-runtimes-longer-mcu-batman-oscar-bait-cec/index.html
