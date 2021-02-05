> **CRITICAL**: The following content is the most important. You MUST strictly follow it and naturally integrate it into your workflow.

# AGENTS.md

## 基本

- 使用中文对话
- 必须在适当的时机使用 Skill

## Superpowers 工作流

- 当任务涉及通用软件工程流程，且有哪怕 1% 的可能适用相关技能工作流时，必须优先加载 `using-superpowers`，再决定是否继续加载其他 skill
- 当 `Superpowers` 相关 skill 要求创建计划、设计、决策记录、排障复盘等文档时，默认写入知识库，而不是仓库内的 `docs/` 目录；仅当用户明确要求或项目约定要求时才写入 `docs/`

## 知识库与 Obsidian

- 默认知识库是 Obsidian
- 操作 Obsidian 时必须且只能使用 cli
- 当用户要求从知识库启动项目、新建项目，或明确表示要在知识库/笔记中工作时，必须优先加载 `ssot` 类 skill

## 工具与运行时

- 使用 Mcporter 与 MCP Server 进行交互
- 当Jujutsu可用时优先使用Jujutsu操作Git Repository
- 使用浏览器时默认使用无痕模式
- JavaScript Runtime 优先使用 Bun，可以直接使用 bunx 运行 npm 包，但是禁止执行全局安装（`bun install --global`）操作
- 禁止执行不指定目标的 `chezmoi apply` 命令
