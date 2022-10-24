## Xiaomi Bloatware List

#### Usefull commands

```bash
pm list packages # list package names
pm list packages -r # list package names + path to apk
pm list packages -3 # list 3rd party package names
pm list packages -s # list system package names only
pm list packages -u # list package names + uninstalled


pm disable-user app.package.name # Disable app
pm enable app.package.name # Re-enable it

# Uninstall app
# Sometimes uninstall command may not work without -k option on un-rooted devices
# -k: Keep the data and cache directories around after package removal. 
pm uninstall --user 0 app.package.name
pm install --user 0 $(pm dump app.package.name | awk '/path/{ print $2 }') # Install uninstalled system app
pm install-existing app.package.name # Another way to install uninstalled system app
```
