# Introduction

Disable the current version of PHP and enable your desired PHP version.  
I'm using this for my own needs. It won't necessary fit yours.

# Installation

    $ cp switchphp.sh /usr/local/bin/switchphp
    $ chmod +x /usr/local/bin/switchphp

# Usage
Switch to php 7.3 (pre-installed)

    $ switchphp 7.3
    
# What does it do?
- Disable the current PHP version
- Stop the PHP FPM service
- Enable your desired PHP version
- Start the PHP FPM service 
- Update alternatives
