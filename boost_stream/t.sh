#!/bin/sh

#!/bin/sh

result=0

until [ ! $result ]
do
   echo $result
   result=ping redis | grep "Name or "
done
