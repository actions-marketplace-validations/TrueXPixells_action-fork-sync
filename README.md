# Sync your forks

This action locks a pull-request

## Example usage

```yml
  - name: sync fork
    uses: TrueXPixells/action-fork-sync@main
    with:
        source-url: "https://${{ secrets.BOT_TOKEN }}:x-oauth-basic@github.com/orgname/officialproject.git"
        fork-url: "https://${{ secrets.BOT_TOKEN }}:x-oauth-basic@github.com/myname/officialproject-fork.git"
```
