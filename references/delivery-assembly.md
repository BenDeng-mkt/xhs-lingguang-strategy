# 策略装配与 PPT 交接

## 标准装配包

```yaml
project:
  brand: ""
  product: ""
  commercial_category: ""
  time_window: ""
facts: []
inferences: []
targeting_sets:
  - context: "内容角度 × 人群"
    core: []
    validation: []
    handoff_or_scale: []
    search_packages: []
    risk: []
test_rules: []
delivery_gaps: []
```

## 组别规则

- 每个 Targeting Set 写为“语境 = 内容角度 × 人群 × 词包”。
- 先选一个核心验证组；相邻大包作为独立对照；高重叠意图包优先作为细分承接。
- 不直接求多个大包交集，也不一次性全开。
- 投放端最终可选/可投状态属于待确认，不由灵光规则查询代替。

## PPT 交接

当用户明确要求 PPTX 时，将装配包交给 `$ppt-master`。建议叙事为：

1. 类目与搜索环境
2. 比较/证明语境
3. 人群分层
4. 重叠与测试结构
5. 词包与执行边界

每页保留来源、时间范围、指标口径与局限；PPT 不反向改变原子结论。
