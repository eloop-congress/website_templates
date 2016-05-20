# website\_templates
Template of eloop.org

# build

    git clone https://github.com/alexandrevicenzi/Flex themes/Flex
    pip install pelican markdown ghp-import
    pelican

# deploy preprod

    echo "dev.eloop.org" > output/CNAME
    python `which ghp-import` output -n
    git remote add preprod git@github.com:eloop-congress/dev.eloop.org.git || :
    git push preprod gh-pages:gh-pages -f
