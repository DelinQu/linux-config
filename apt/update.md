## update
- https://www.cyberciti.biz/faq/how-do-i-update-ubuntu-linux-softwares/

```bash
sudo apt update
apt list --upgradable
```

## block a package
- https://askubuntu.com/questions/18654/how-to-prevent-updating-of-a-specific-package
- Hold a package:
```
sudo apt-mark hold <package-name>
```

- Remove the hold:
```
sudo apt-mark unhold <package-name>
```

- Show all packages on hold:
```
sudo apt-mark showhold
```
