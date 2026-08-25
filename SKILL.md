---
name: xhs-lingguang-strategy
description: Use when researching Xiaohongshu Lingguang/Lingxi through a logged-in Chrome session, turning verified platform results into pre-investment targeting strategy, keyword packages, audience tests, or a PPT-ready strategy package.
metadata:
  version: 0.1.0
---

# 灵光投放策略

将灵光的可见、可复核结果转换为“小红书投放前诊断与定向装配包”。它不替代平台数据，也不自动创建、修改或推送人群包。

## Use this skill when

- 需要研究灵光/灵犀的真实数据能力，或验证某个 Skill、字段、口径、限制。
- 需要围绕品牌、类目、关键词、人群或时间范围做投放前诊断。
- 需要将前策人群转为“内容角度 × 人群 × 词包”的可测试定向结构。
- 需要将已核验的策略原子交给 `$ppt-master` 生成演示材料。

不要用于直接承诺预算、KPI、最终可投覆盖或转化预测；不要将其用于绕过登录、权限、频控、付费或安全机制。

## Core principle

投放原子不是孤立人群，而是：

```text
语境 = 内容角度 × 人群 × 搜索/比较语言
```

先验证最小事实，再装配语境；人群包规模、交集和包名都不能替代最终投放可用性或效果。

## Operating route

1. 判定工作模式：`explore`、`collect`、`validate`、`assemble` 或 `deliver`。
2. 建立或续接一个项目的灵光主会话；优先读取已有页面、历史任务和产出物。除非语义完全无关，不新开会话。
3. 读取 [evidence-contract.md](references/evidence-contract.md)，明确对象、商业类目、时间、指标和输出边界。
4. 选择并完成最小策略原子；见 [strategy-atoms.md](references/strategy-atoms.md)。
5. 记录任务卡。使用 [research-task-card.md](assets/research-task-card.md)；成功、失败和待确认都要留痕。
6. 原子通过核验后，按 [delivery-assembly.md](references/delivery-assembly.md) 生成策略装配包；若需 PPTX，再调用 `$ppt-master`。

## Permissions and pacing

- 可自主继续：查看页面/历史产出/技能说明、读取文件、只读小样本查询、任务状态监控、口径与异常核验。
- 必须先确认：新建或更新 Skill、批量或高消耗任务、创建/修改/删除/推送人群包、上传敏感文件、分享或发布、改平台设置、删除任务或产出。
- 等待任务时，以同一会话状态为准；持续检查，不重复提交同一任务。连续两次无状态变化时记录失败，尝试一次最小替代验证。

## Output contract

任何数据型交付按此顺序输出：

1. 结论摘要
2. 已执行内容
3. 证据与口径
4. 产出物
5. 局限与风险
6. 下一步建议

每条结论必须标记为【平台事实】、【计算结果】、【合理推断】、【策略建议】或【待确认】之一。

## References

- [evidence-contract.md](references/evidence-contract.md)：数据、实体与证据规则。
- [strategy-atoms.md](references/strategy-atoms.md)：投放前诊断原子与通过条件。
- [browser-operations.md](references/browser-operations.md)：Chrome 主会话与任务等待规范。
- [delivery-assembly.md](references/delivery-assembly.md)：策略装配包与 PPT 交接格式。
