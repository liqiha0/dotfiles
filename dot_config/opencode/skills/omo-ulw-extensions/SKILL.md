---
name: omo-ulw-extensions
description: OMO Ultrawork 模式的轻量级扩展。当进入 OMO Ultrawork 模式时加载此 Skill。
---

# OMO Ultrawork Extensions

此 Skill 作为 Ultrawork 的轻量级补丁，补充一些关键信息。

## 验证能力检查

**Trigger**: 在开始 Implementation 之前。
**Goal**: 确认**当前环境是否足以验证你的代码修改**。

**执行动作**:
1.  **依赖检查**: 确认依赖已安装。
2.  **验证手段确认**: 
    - 如果你打算运行验证，确认现在能运行。
    - 如果你打算用 Build 验证，确认现在能 Build。
    - 如果你打算用脚本验证，确认脚本环境可用。
    - **忽略无关错误**: 不要纠结于现有的 Failing Tests，除非它们阻碍了你的验证手段。

**原则**: 只要环境能支持“修改->验证”的闭环，即可放行。

## 知识沉淀

**Trigger**: 发现有价值的隐性知识时（坑点、决策、通用技巧）。
**依赖**: 必须加载 `obsidian` Skill。

**路由规则**:
1.  **项目特定 (Project Specific)** -> `Projects/{CurrentProject}/`
    - 追加到项目笔记。
2.  **通用知识 (General)** -> `System/Inbox/`
    - 创建新文件，命名为 `YYYYMMDDHHmm.md` (时间戳)。
    - 添加 `#AI生成` 标签。
