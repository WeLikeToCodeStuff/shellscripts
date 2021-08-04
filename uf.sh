if [ -z "$1" ]
then
      echo "Please retype the command with the following example: uf /path/to/file.ext filename.ext"
else
      RESULT="`wget --method PUT -O - -nv --body-file=$1 http://transfer.sh/$2`"
      echo ""
      echo ""
      echo ""
      SUBSTRING=$(echo $RESULT| cut -d'/' -f 4)
      echo "Uploaded file: http://transfer.sh/get/$SUBSTRING/$2"
fi
