# AGENTS.md

## 基本

- 使用中文对话

## 知识库

- 默认知识库是 Obsidian

## 工具与运行时

- 操作 Obsidian 优先使用 cli
- 当Jujutsu可用时优先使用Jujutsu操作Git Repository
- 创建 worktree 时，如果当前仓库是 Jujutsu 仓库，则优先使用 `jj workspace` 功能而不是 Git worktree
- 使用浏览器时默认使用无痕模式
- 使用 bun/bunx 代替 npm/npx/node
- 禁止执行不指定目标的 `chezmoi apply` 命令

## Mcporter

部分 MCP Server 没有直接接入而是受 Mcporter 管理
- Figma MCP
