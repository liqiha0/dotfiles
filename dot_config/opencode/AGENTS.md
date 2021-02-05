# AGENTS.md

## 基本

- 默认使用中文
- 遇到外部库或开源工具的非预期问题时，优先检索官方文档、相关 issue 或上游讨论，避免仅凭推断分析

## 知识库

- 默认知识库是 Obsidian

## 工具与运行时

- 操作 Obsidian 优先使用 cli
- 当Jujutsu可用时优先使用Jujutsu操作Git Repository
- 创建 worktree 时，如果当前仓库是 Jujutsu 仓库，则优先使用 `jj workspace` 功能而不是 Git worktree
- 使用浏览器时默认使用无痕模式
- 优先使用 bun/bunx
- 优先使用 uv/uvx
