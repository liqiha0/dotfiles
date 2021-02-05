---
name: obsidian
description: 在需要与用户的 Obsidian 笔记系统交互（读取、搜索或写入）时加载此 Skill。
mcp:
  "obsidian": {
    "command": "uvx",
    "args": [ "mcp-obsidian" ],
    "environment": {
      "OBSIDIAN_API_KEY": "672db5afde5e4f2e94674feb9fa922446b1b890ad26cd45b6aa2cb593aa75176"
    }
  }
---

# Obsidian

此 Vault 遵循标准的 **PARA 方法论** (Projects, Areas, Resources, Archives)，外加一个用于全局管理的 **System** 目录。

## ⚠️ 核心权限协议 (Permission Protocol)

**严格执行以下读写权限：**

| 目录 (PARA) | 权限 | 说明 |
| :--- | :--- | :--- |
| **`Projects/`** | ✅ **读写 (Read & Write)** | **主要工作区**。所有活跃项目、Agent 输出、新建笔记默认放在这里。 |
| **`System/Inbox/`** | ✅ **追加 (Append Only)** | **收集箱**。用于存放稍纵即逝的想法或待办事项。 |
| `System/` (其他) | 👁️ **只读 (Read Only)** | Dashboard, Templates 等。严禁修改。 |
| `Areas/` | 👁️ **只读 (Read Only)** | 长期责任区。严禁修改。 |
