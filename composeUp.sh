if [ -z "$1" ]
then
      docker-compose  up
else
      echo $1
      docker-compose -f $1 up
fi

