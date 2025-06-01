# Export GitHub Secrets

This GitHub Action collects selected secrets and exports them into a `.env` file, then uploads it as an artifact.

## Inputs

- `secrets`: (required) Comma-separated list of secret names to export.
- `output`: (optional) Output filename. Default: `secrets.env`.

## Example

```yaml
uses: your-username/export-secrets-action@v1
with:
  secrets: API_KEY,DB_PASSWORD
  output: my-secrets.env
```
