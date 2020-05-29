#!/bin/bash

user_path=~
dl_name="Téléchargements"
dl_path=$user_path/$dl_name/

# Create pdf folder
pdf_folder_name="pdf"
if [ ! -d $dl_path$pdf_folder_name ] ; then
  mkdir $dl_path$pdf_folder_name
fi

# Move pdf file to pdf folder
if [ -f $dl_path*.pdf ] ; then
  mv $dl_path*.pdf $dl_path$pdf_folder_name
fi

# Create img folder
img_folder_name="img"
if [ ! -d $dl_path$img_folder_name ] ; then
  mkdir $dl_path$img_folder_name
fi

# Move image file to img folder
if [ -f $dl_path*.png ] ; then
  mv $dl_path*.png $dl_path$img_folder_name
fi
if [ -f $dl_path*.jpeg ] ; then
  mv $dl_path*.jpeg $dl_path$img_folder_name
fi

# Create archive folder
archive_folder_name="archive"
if [ ! -d $dl_path$archive_folder_name ] ; then
  mkdir $dl_path$archive_folder_name
fi

# Move archive file to archive folder
if [ -f $dl_path*.zip ] ; then
  mv $dl_path*.zip $dl_path$archive_folder_name
fi
if [ -f $dl_path*.tar ] ; then
  mv $dl_path*.tar $dl_path$archive_folder_name
fi
if [ -f $dl_path*.tar.gz ] ; then
  mv $dl_path*.tar.gz $dl_path$archive_folder_name
fi

# Create code folder
code_folder_name="code"
if [ ! -d $dl_path$code_folder_name ] ; then
  mkdir $dl_path$code_folder_name
fi

# Move all code files to code folder
if [ -f $dl_path*.c ] ; then
  mv $dl_path*.c $dl_path$code_folder_name
fi
if [ -f $dl_path*.h ] ; then
  mv $dl_path*.h $dl_path$code_folder_name
fi

# Create text folder
text_folder_name="text"
if [ ! -d $dl_path$text_folder_name ] ; then
  mkdir $dl_path$text_folder_name
fi

# Move all code files to code folder
if [ -f $dl_path*.txt ] ; then
  mv $dl_path*.txt $dl_path$text_folder_name
fi
if [ -f $dl_path*.ods ] ; then
  mv $dl_path*.ods $dl_path$text_folder_name
fi

# Delete the content of folder $2 in download folder

option="$1"
folder="$2"

have_two_args() {
  if [ ! "$option" == "" ] && [ ! "$folder" == "" ] ; then
    return 1;
  else
    return 0;
  fi
}

if [ `have_two_args ` ] ; then
  echo "two"
  if [ "$1" == "delete" ] ; then
  echo "two"
    if [ -d $dl_path$2 ] ; then
      if [ `ls $dl_path$2` ] ; then
        rm $dl_path$2/*
      else
        echo "no file"
      fi
    else
      echo "This folder doesn't exist"
    fi
  fi
fi