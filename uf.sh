if [ -z "$1" ]
then
      echo "Please retype the command with the following example: uf /path/to/file.ext filename.ext"
else
      RESULT="`wget --method PUT -O - -nv --body-file=$1 http://transfersh.com/$2`"
      echo ""
      echo ""
      echo ""
      SUBSTRING=$(echo $RESULT| cut -d'/' -f 4)
      echo "Uploaded file: http://transfersh.com/get/$SUBSTRING/$2"
fi
