#!/bin/bash

#=================================================
# COMMON VARIABLES
#=================================================

nodejs_version="14"

#=================================================
# PERSONAL HELPERS
#=================================================

_digiscreen_build() {
    pushd "$install_dir/sources"
        echo "VUE_APP_PIXABAY_API_KEY=$apikey_pixabay" >> .env
        echo "VUE_APP_GOOGLE_API_KEY=$apikey_google_youtube" >> .env

        ynh_use_nodejs
        "$ynh_npm" install
        "$ynh_npm" run build
    popd
}

#=================================================
# EXPERIMENTAL HELPERS
#=================================================

#=================================================
# FUTURE OFFICIAL HELPERS
#=================================================
