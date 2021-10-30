#!/bin/bash

# Move pdf file to pdf folder
move_pdf() {
  pdf_files=$(ls ${dl_path}*.pdf 2> /dev/null)
  if [ "" != "${pdf_files}" ] ; then
    mv ${pdf_files} ${pdf_folder_path}
  fi
}

# Move image file to img folder
move_img() {
  img_files=$(ls ${dl_path}*.{png,jpeg,jpg} 2> /dev/null)
  if [ "" != "${img_files}" ] ; then
    mv ${img_files} ${img_folder_path}
  fi
}

# Move archive file to archive folder
move_archive() {
  archive_files=$(ls ${dl_path}*.{zip,tar,tar.gz} 2> /dev/null)
  if [ "" != "${archive_files}" ] ; then
    mv ${archive_files} ${archive_folder_path}
  fi
}

# Move all code files to code folder
move_code() {
  code_files=$(ls ${dl_path}*.{c,cpp,cc,h,hpp,hh} 2> /dev/null)
  if [ "" != "${code_files}" ] ; then
    mv ${code_files} ${code_folder_path}
  fi
}

# Move all code files to code folder
move_text() {
  text_files=$(ls ${dl_path}*.{txt,ods,md,org,dat,csv,data} 2> /dev/null)
  if [ "" != "${text_files}" ] ; then
    mv ${text_files} ${text_folder_path}
  fi
}

# Move all code files to code folder
move_text() {
  text_files=$(ls ${dl_path}*.{txt,ods,md,org,dat,csv,data} 2> /dev/null)
  if [ "" != "${text_files}" ] ; then
    mv ${text_files} ${text_folder_path}
  fi
}

move_in_folder() {
  move_pdf
  move_img
  move_archive
  move_code
  move_text
}
