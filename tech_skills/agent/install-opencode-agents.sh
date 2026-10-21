#!/usr/bin/env bash
set -euo pipefail

source_dir="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd)"
repo_root="$(cd -- "$source_dir/.." && pwd)"
target="${1:-.}"

if [[ ! -d "$target" ]]; then
    printf 'Target directory does not exist: %s\n' "$target" >&2
    exit 1
fi

target="$(cd -- "$target" && pwd)"

mkdir -p "$target/.opencode/agents"
mkdir -p "$target/.opencode/skills"

coding_rules="$source_dir/agent/coding-rules.md"
if [[ -e "$target/.opencode/coding-rules.md" ]]; then
    printf 'Refusing to overwrite: %s\n' "$target/.opencode/coding-rules.md" >&2
    exit 1
fi
cp -- "$coding_rules" "$target/.opencode/coding-rules.md"

for file in "$source_dir"/agent/opencode/*.md; do
    destination="$target/.opencode/agents/$(basename "$file")"

    if [[ -e "$destination" ]]; then
        printf 'Refusing to overwrite: %s\n' "$destination" >&2
        exit 1
    fi

    cp -- "$file" "$destination"
done

for skill_dir in "$source_dir"/skills/*; do
    skill_name="$(basename "$skill_dir")"
    destination="$target/.opencode/skills/$skill_name"

    if [[ "$skill_name" == "handoff" && -e "$destination" ]]; then
        printf 'Preserving existing skill: %s\n' "$destination"
        continue
    fi

    if [[ -e "$destination" ]]; then
        printf 'Refusing to overwrite: %s\n' "$destination" >&2
        exit 1
    fi

    cp -R -- "$skill_dir" "$destination"
done

command_source="$source_dir/commands"
if [[ ! -d "$command_source" && -d "$repo_root/commands" ]]; then
    command_source="$repo_root/commands"
fi
if [[ -d "$command_source" ]]; then
    mkdir -p "$target/.opencode/commands"

    for file in "$command_source"/*.md; do
        [[ -e "$file" ]] || continue
        destination="$target/.opencode/commands/$(basename "$file")"

        if [[ -e "$destination" ]]; then
            printf 'Refusing to overwrite: %s\n' "$destination" >&2
            exit 1
        fi

        cp -- "$file" "$destination"
    done
fi

printf 'Installed OpenCode development bundle into:\n  %s/.opencode\n' "$target"
printf '\nPrimary agent:\n  develop\n'
printf '\nInstalled agents:\n'
find "$target/.opencode/agents" -maxdepth 1 -type f -printf '  %f\n' | sort
printf '\nInstalled skills:\n'
find "$target/.opencode/skills" -mindepth 1 -maxdepth 1 -type d -printf '  %f\n' | sort
if [[ -d "$target/.opencode/commands" ]]; then
    printf '\nInstalled commands:\n'
    find "$target/.opencode/commands" -maxdepth 1 -type f -printf '  %f\n' | sort
fi
