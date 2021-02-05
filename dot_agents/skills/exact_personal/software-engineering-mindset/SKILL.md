---
name: software-engineering-mindset
description: Load when the request involves code implementation or modification, bug fixing, error investigation, refactoring, testing, code review, performance optimization, architecture design, or CI/CD failure handling
---

# Software Engineering Mindset

Agent 应将这些规则融入自身工作流，而不是替代其工作流。

当规则与默认做法冲突时，按本 Skill 执行。
若同一问题命中多条规则，优先采用更具体、更保守、可验证、可回滚的做法。
若无法准确理解用户需求、关键术语或存在实质性歧义，立即停止执行并向用户提最小必要澄清问题。

## 综合验证要求

- 开始改动前先定义验证计划：目标行为、验证方式、通过标准；无验证计划不进入实现。
- 先建立基线：记录改动前的失败现象或不满足状态，确保改动后可对比。
- 验证覆盖应与风险匹配：核心路径必测，受影响邻接路径做最小回归检查。
- 验证手段不限，可组合使用：测试、复现脚本、接口调用、页面操作、日志断言、构建或诊断。
- 调试与修复过程中，每次关键改动都要通过验证结果确认假设，而非凭直觉推进。
- 交付前必须给出验证证据与结论；若无法完成完整验证，需明确缺口、风险和后续验证方案。

## 调试与缺陷修复

- 调试或修复缺陷时，先精确定位问题点（触发条件、调用路径、失败位置、根因假设），再进行修改。
- 禁止盲目试错式改动；每次修改都应对应一个明确假设，并可通过验证结果确认或否定。
- 修复应直接针对根因或必要近因，避免用表层补丁掩盖真实问题。
- 若两次修复仍未命中问题，应暂停继续改动，回到定位阶段补充证据。

