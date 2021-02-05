---
name: obsidian-ssot
description: "当用户要求启动项目、新建项目、或者在特定来源（如知识库、笔记）中工作时加载此 skill。该 skill 指导 Agent 如何将用户的 Obsidian Vault 作为单一事实来源 SSOT 进行访问和操作，包含特定的 PARA 目录规范、Zettelkasten 位置以及项目入口文件规范。"
---

# Obsidian SSOT

当用户要求“启动一个项目”、“新建一个项目”或“在我的知识库/笔记中工作”时，你必须严格遵循以下规范来访问和操作用户的 Obsidian Vault。

## 核心路径与架构
- **Vault 绝对**: `~/Documents/ObsidianVault/Second Brain`
- **目录架构 (PARA + Zettelkasten)**:
  - `Projects/`：**主要工作区**。当进行特定项目时，必须以此目录下的对应项目文件夹为主。
  - `Areas/`：辅助参考区。存放长期关注的领域知识。
  - `Resources/`：辅助参考区。**注意：Zettelkasten 存放在此目录下。**
  - `Archives/`：辅助参考区。存放已归档的项目或资源。

## 项目入口规范
无论是读取现有项目还是创建新项目，每个项目文件夹（位于 `Projects/<项目名>/` 下）都通常包含以下两个核心入口文件：
1. **`README.md`**：项目的主要文档和文本起点。
2. **`桌面.canvas`**：项目的可视化工作区。

**读取现有项目时**：
- 优先读取该项目目录下的 `README.md` 和 `桌面.canvas` 以获取全局上下文，然后再查看其他文件。

## 新建项目规范
当用户要求新建项目时，必须严格执行以下操作：
1. 在 `Projects/` 目录下创建以项目名命名的新文件夹。
2. **Frontmatter**：在创建或编辑 Markdown 文件时，尽量避免添加 YAML 属性块，仅在必要时考虑添加。
3. 初始化入口文件：
   - 创建 `README.md`。
   - 创建 `桌面.canvas`（可选）

## 检索与关联策略
- **寻找项目上下文**：直接前往 `Projects/<项目名>/`。
- **寻找通用概念/卡片笔记**：前往 `Resources/` 目录进行检索。
- **跨目录引用**：在 `README.md` 中引用卡片盒内容时，使用 Obsidian 的双链语法 `[[笔记名]]`。

## 工具使用建议
- 如果需要处理 `.canvas` 文件，可以结合 `json-canvas` skill 的相关知识。
- 如果需要处理复杂的 Markdown 语法，可以参考 `obsidian-markdown` skill。
