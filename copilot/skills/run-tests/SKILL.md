---
name: run-tests
description: After creating or modifying any test files (*Tests.cs), run those specific tests to verify they pass. Use this automatically whenever test files are written or changed.
---

After creating or modifying any `*Tests.cs` files, run only those specific tests to verify they compile and pass before considering the task complete.

## Steps

1. Collect the paths of every `*Tests.cs` file you created or modified during this task.

2. Determine which test project each file belongs to by finding the nearest `.csproj` file in the file's directory tree.

3. Run `dotnet test` filtered to only the changed test classes using the `--filter` flag with the fully-qualified class name:

   ```powershell
   dotnet test <test-project-path> --filter "FullyQualifiedName~<TestClassName>" --no-build
   ```

   Example for a single changed test file:

   ```powershell
   dotnet test path/to/test-project.csproj --filter "FullyQualifiedName~TestClassName" --no-build
   ```

   Example for multiple changed test files across the same project:

   ```powershell
   dotnet test path/to/test-project.csproj --filter "FullyQualifiedName~TestClassName|FullyQualifiedName~OtherTestClassName" --no-build
   ```

   If the changed test files span multiple test projects, run `dotnet test` once per project.

4. If any tests fail, read the failure output, identify the root cause in the test or the implementation, fix it, and re-run until all tests pass.

5. Report a brief summary: how many tests ran, how many passed, and whether any required fixes.

## Rules

- Always use `--filter` with the specific class name(s) — never run the full solution test suite (`dotnet test path/to/solution.sln`) as part of this skill.
- If `--no-build` fails (e.g. the project hasn't been built yet), retry without `--no-build`.
- Only trigger this skill when test files (`*Tests.cs`) were created or modified — not when only production code changed.
- Do not modify test assertions purely to make tests pass — fix the underlying implementation or test logic instead.
