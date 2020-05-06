
#!/bin/bash

cd ../$APP

php artisan make:migration $TB_FILE --create=$TABLE