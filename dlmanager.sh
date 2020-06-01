#!/bin/bash

user_path=~
dl_name="Téléchargements"
dl_path=$user_path/$dl_name/

pdf_folder_name="pdf"
img_folder_name="img"
archive_folder_name="archive"
code_folder_name="code"
text_folder_name="text"

pdf_folder_path=${dl_path}${pdf_folder_name}
img_folder_path=${dl_path}${img_folder_name}
archive_folder_path=${dl_path}${archive_folder_name}
code_folder_path=${dl_path}${code_folder_name}
text_folder_path=${dl_path}${text_folder_name}

create_folder() {
  mkdir -p ${pdf_folder_path}
  mkdir -p ${img_folder_path}
  mkdir -p ${archive_folder_path}
  mkdir -p ${code_folder_path}
  mkdir -p ${text_folder_path}
}

move_in_folder() {
  # Move pdf file to pdf folder
  pdf_files=${dl_path}*.pdf
  if [ -f ${pdf_files} ] ; then
    mv ${pdf_files} ${pdf_folder_path}
  fi

  # Move image file to img folder
  png_files=${dl_path}*.png
  if [ -f ${png_files} ] ; then
    mv ${png_files} ${img_folder_path}
  fi
  jpeg_files=${dl_path}*.jpeg
  if [ -f ${jpeg_files} ] ; then
    mv ${jpeg_files} ${img_folder_path}
  fi

  # Move archive file to archive folder
  zip_files=${dl_path}*.zip
  if [ -f ${zip_files} ] ; then
    mv ${zip_files} ${archive_folder_path}
  fi
  tar_files=${dl_path}*.tar
  if [ -f ${tar_files} ] ; then
    mv ${tar_files} ${archive_folder_path}
  fi
  tar_gz_files=${dl_path}*.tar.gz
  if [ -f ${tar_gz_files} ] ; then
    mv ${tar_gz_files} ${archive_folder_path}
  fi

  # Move all code files to code folder
  c_files=${dl_path}*.c
  if [ -f ${c_files} ] ; then
    mv ${c_files} ${code_folder_path}
  fi
  h_files=${dl_path}*.h
  if [ -f ${h_files} ] ; then
    mv ${h_files} ${code_folder_path}
  fi

  # Move all code files to code folder
  txt_files=${dl_path}*.txt
  if [ -f ${txt_files} ] ; then
    mv ${txt_files} ${text_folder_path}
  fi
  ods_files=${dl_path}*.ods
  if [ -f ${ods_files} ] ; then
    mv ${ods_files} ${text_folder_path}
  fi
}

# Clean the content of folder $2 in download folder
clean_folder() {
  option="$1"
  folder="$2"
  clean="clean"

  if [ ! -z ${option} ] && [ ! -z ${folder} ] ; then
    if [ ${option} == ${clean} ] ; then
      if [ -d ${dl_path}${folder} ] ; then
        if [ `ls ${dl_path}${folder}` ] ; then
          rm ${dl_path}${folder}/*
        else
          echo "There are no file in folder ${folder}"
        fi
      else
        echo "This folder doesn't exist"
      fi
    fi
  fi
}

# Script begin

create_folder
move_in_folder
clean_folder $1 $2