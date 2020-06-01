#!/bin/bash

# Move pdf file to pdf folder
move_pdf() {
  pdf_files=${dl_path}*.pdf
  if [ -f ${pdf_files} ] ; then
    mv ${pdf_files} ${pdf_folder_path}
  fi
}

# Move image file to img folder
move_img() {
  png_files=${dl_path}*.png
  if [ -f ${png_files} ] ; then
    mv ${png_files} ${img_folder_path}
  fi

  jpeg_files=${dl_path}*.jpeg
  if [ -f ${jpeg_files} ] ; then
    mv ${jpeg_files} ${img_folder_path}
  fi
}

# Move archive file to archive folder
move_archive() {
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
}

# Move all code files to code folder
move_code() {
  c_files=${dl_path}*.c
  if [ -f ${c_files} ] ; then
    mv ${c_files} ${code_folder_path}
  fi

  h_files=${dl_path}*.h
  if [ -f ${h_files} ] ; then
    mv ${h_files} ${code_folder_path}
  fi
}

# Move all code files to code folder
move_text() {
  txt_files=${dl_path}*.txt
  if [ -f ${txt_files} ] ; then
    mv ${txt_files} ${text_folder_path}
  fi

  ods_files=${dl_path}*.ods
  if [ -f ${ods_files} ] ; then
    mv ${ods_files} ${text_folder_path}
  fi
}

move_in_folder() {
  move_pdf
  move_img
  move_archive
  move_code
  move_text
}