#!/bin/bash

classify() {
    if [ -z "$1" ] || [ -z "$2" ]
    then
        echo "No argument supplied"
        return
    fi
    echo "source_path : $1"
    echo "dest_path : $2"

    whoami
    source_path=$1
    dest_path=$2

    echo "make directory"
    mkdir -p "$dest_path/software"
    mkdir -p "$dest_path/ebook"
    mkdir -p "$dest_path/pdf"
    mkdir -p "$dest_path/doc"
    mkdir -p "$dest_path/xls"
    mkdir -p "$dest_path/pic"
    mkdir -p "$dest_path/zip"
    mkdir -p "$dest_path/video"
    cd "$source_path"
    pwd
    mv *.zip *.rar *.tar *.gz "$dest_path/zip/"
    mv *.msi *.exe *.apk "$dest_path/software/"
    mv *.epub *.azw *.mobi "$dest_path/ebook/"
    mv *.pdf "$dest_path/pdf/"
    mv *.txt *.pdf *.doc *.docx *.ppt *.pptx "$dest_path/doc/"
    mv *.xla *.xls *.xlsx *.csv *.CSV *.xlsm "$dest_path/xls/"
    mv *.jpg *.jpeg *.png "$dest_path/pic/"
    mv *.mp4 *.avi *.webm *.mkv "$dest_path/video/"
}

classify $1 $2