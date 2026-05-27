# Variables
UP_SCRIPT := "up.sh"
LABS_DIR := justfile_directory() + "/labs"
BOOK_DIR := justfile_directory() + "/book"
PAGES_DIR := justfile_directory() + "/pages"

# Publish pages
publish:
    #!/usr/bin/env bash
    echo "{{GREEN}}[+] Building book{{NORMAL}}"
    mdbook build
    cd "{{ BOOK_DIR }}"
    cp -R ./* "{{PAGES_DIR}}"
    cd "{{ PAGES_DIR }}"
    git add -A
    pubdate=$(date -Iseconds)
    git commit -m "Publish: $pubdate"
    git push
    cd ..
    git commit -am "Update: $pubdate"
    git push

# Setup base image
setup:
    #!/usr/bin/env bash
    echo "{{GREEN}}[+] Building base peer image{{NORMAL}}"
    cd "{{ LABS_DIR }}"
    pwd
    # build peer
    cd wg-peer
    podman image build -t wg-peer:base .

# Bring up the containers for a given lab_num
up lab_num:
    #!/usr/bin/env bash
    cd {{ LABS_DIR }}/{{ lab_num }}
    if [[ -f ./{{ UP_SCRIPT }} ]]; then
        echo "{{GREEN}}[+] Start script found; executing{{NORMAL}}"
        ./{{ UP_SCRIPT }}
    else
        echo "{{RED}}[!] No start script found{{NORMAL}}"
        podman compose up -d;
    fi
    zellij -n zellij.kdl -s lab_{{ lab_num }}
    cd -

# Stop the containers for a given lab_num
down lab_num:
    podman compose -f {{ justfile_directory() }}/labs/{{lab_num}}/podman-compose.yml down -t 0   
    zellij action detach
    zellij delete-session --force lab_{{ lab_num }}

# Prints usage
help:
    @just --list
