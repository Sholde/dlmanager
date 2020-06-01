#!/bin/bash

# Clean the content of folder $2 in download folder
clean_folder() {
  folder=${dl_path}${2}
  clean="clean"

  if [ ! -z ${1} ] && [ ! -z ${2} ] ; then
    if [ ${1} == ${clean} ] ; then
      if [ -d ${folder} ] ; then
        if [ `ls ${folder}` ] ; then
          rm ${folder}/*
        else
          echo "There are no file in folder ${2}"
        fi
      else
        echo "This folder doesn't exist"
      fi
    fi
  fi
}