# List MoJ github organisation members

Developed from: https://gist.github.com/jdennes/11404512

# Pre-requisites

* ruby 2.6.2
* [Github token](https://github.com/settings/tokens) with read:org permission, SSO-enabled for the MoJ organisation

# Install

```
bundle install
```

# Run

```
export OCTOKIT_ACCESS_TOKEN=[your github access token]
make
```

This takes approx. 3 minutes, because the script retrieves details for each user individually, which is a bit slow.

The user list will be output to the file `export-all.csv`

