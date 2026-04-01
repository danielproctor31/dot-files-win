---
name: dotnet-format
description: Run dotnet format on any .cs or .cshtml files that were created during this task. Use this automatically after creating any C# or Razor files.
---

After creating any `.cs` or `.cshtml` files, run `dotnet format` scoped to only those files to ensure they conform to the project's code style rules defined in `src/.editorconfig`.

## Steps

1. Collect the paths of every `.cs` and `.cshtml` file you created during this task.

2. From the repository root, run `dotnet format` with the `--include` flag targeting only those files:

   ```powershell
   dotnet format path/to/solution.sln --include <file1> <file2> ...
   ```

   Example with multiple files:

   ```powershell
   dotnet format path/to/solution.sln --include /path/to/file.cs /path/to/anotherfile.cshtml
   ```

3. If `dotnet format` reports any changes, show a brief summary of which files were reformatted.

## Rules

- Always pass `--include` with the exact file paths — never run `dotnet format` without it, as that would reformat the entire solution.
- Use the solution file `path/to/solution.sln` as the target so the correct `.editorconfig` is resolved.
- Run this as the final step after all file edits are complete, not between individual file writes.
- If no `.cs` or `.cshtml` files were created in this task, skip this skill entirely.
