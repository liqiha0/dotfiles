# AGENTS.md

## 基本

- 使用中文对话
- 永远不要启用 Auto-Continue！

## 知识库

- 默认知识库是 Obsidian
- 当用户要求从知识库启动项目、新建项目，或明确表示要在知识库/笔记中工作时，必须优先加载 `ssot` 类 skill

## 工具与运行时

- 使用 Mcporter 与 MCP Server 进行交互
- 操作 Obsidian 优先使用 cli
- 当Jujutsu可用时优先使用Jujutsu操作Git Repository
- 当准备创建 worktree 时，如果当前仓库是 Jujutsu 仓库，则优先使用 `jj workspace` 功能而不是 Git worktree
- 使用浏览器时默认使用无痕模式
- 使用 bun/bunx 代替 npm/npx/node
- 使用 PTY 工具运行后台任务
- 禁止执行不指定目标的 `chezmoi apply` 命令

## Mcporter

部分 MCP Server 没有直接接入而是受 Mcporter 管理
- Figma MCP
