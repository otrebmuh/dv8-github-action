# Depends DV8 analysis action

This action performs an analysis of the project and identifies architectural issues using depends.

## Inputs

### `language`

**Required** Source code language: cpp, java, ruby, python, pom . Default `"java"`.

## Outputs

### `result`

The result of the analysis.

## Example usage

    - name: Depends analysis step
        uses: otrebmuh/dv8-github-action@0.1
        id: depends
        with:
          language: 'java'
      # Use the output from the depends step
    - name: Depends result
        run: echo "The result of the analysis was ${{ steps.depends.outputs.result }}"