#### Bash profile for Terminal

A .bash_profile for your convenience. Best practices and tricks for keeping the same profile across multiple platforms
by easily cloning them from a repository.

#### MAC Terminal Users

A typical install of OSX won't create a .bash_profile for you.
When you want to run functions from your command line, this is a must-have.

#### Getting Started

To install, follow the steps:

First, `cd` into your root directory:

```
cd ~/.
```
Download the `install.sh` file using wget:

	wget https://github.com/naacal/Mac-OSX-Bash-Profile/blob/master/install.sh

To install the .bash_profile type:

```
bash install.sh
```
Once the profile has been installed, you can update it by typing the following command:
```
bash_profile_update
```

#### IF you don't have .bash_profile, you can create one by following the steps below:

Start up terminal and go to root directory:
```
cd ~/.
```
To create `.bash_profile` file type:
```
touch .bash_profile
```
To open the file type: (Default editor is TextEdit)
```
open -e .bash_profile
```
To reload the file type:
```
. ~/.bash_profile
```

#### This .bash_profile contains aliases and functions for:

* NETWORKING
* TERMINAL / COMMONS
* FILE AND FOLDER MANAGEMENT
* EXTRACT / MOST KNOWN ARCHIVE FORMATS
* BASIC TERMINAL NAVIGATION
* WEB COMMONS
* SYSTEMS OPERATIONS & INFORMATION
