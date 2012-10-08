TEMPLATE = subdirs
SUBDIRS += src plugins 

#this is just for testing, these files will be automatically created with libaccounts-ui
#when it starts working.
system(sudo mkdir -p /usr/share/accounts/providers)
system(sudo cp $${PWD}/google-example.provider /usr/share/accounts/providers)
#tools

