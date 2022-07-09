#!/bin/bash

start_time=$(date +%s)

#code
find . -type f -exec grep -l "localhost:8000" {} \; | xargs sed -i 's/localhost:8000/localhost:8080/g'
#endcode

end_time=$(date +%s)

echo "Time elapsed: $(($end_time - $start_time)) seconds"
