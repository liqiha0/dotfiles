# AGENTS.md

## 基本

- 使用中文对话

## Superpowers 工作流

- 仅当上下文中已有明确项目时，才进入 `Superpowers` 工作流；如果尚未明确项目，先澄清项目归属，再决定是否进入该工作流。

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
- 禁止执行不指定目标的 `chezmoi apply` 命令
