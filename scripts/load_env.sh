        #!/bin/bash
        FLAVOR=$1
        cp "./assets/env/.env.$FLAVOR" "./assets/env/.env"
        dart run build_runner build --delete-conflicting-outputs