# Get commit id

This action gets the commit id (and also the shortened commit id) from the checked-out repository.

# Usage


```yaml
- uses: fufuhu/get-commit-id
  with:
    # The directory path of the checked-out repository 
    path: ./ # This is the default value.
```

## How to get commit-id

As you can see in action.yml or .github/workflows/get-commit-id.yml,
you can get commit id with `steps.<step-id>.outputs.commid_id`.

```yaml
      - name: Check commit ids
        run: |
          echo "COMMIT ID:" ${{ steps.get_commit_id.outputs.commit_id }}
          echo "SHORT COMMIT ID:" ${{ steps.get_commit_id.outputs.short_commit_id }}
```

As of above, you can get shortened commit id with `steps.<step-id>.outputs.short_commit_id`.