# HeroLegend（勇者传说）

目标：中型 RPG，首版以“即时战斗”为核心，后续支持回合制切换。

## 目录结构
- assets/: 资源（textures, audio, fonts, shaders）
- scenes/: 场景（core, gameplay, world, ui）
- scripts/: 代码（按子域划分）
- data/: 配置、本地化、存档
- addons/: 插件

## 开发环境
- Godot 4.3 Stable
- GDScript

## 运行
1. 打开 Godot → 导入本项目
2. 运行主场景：scenes/core/Main.tscn

## 约定
- 场景与脚本同名配对
- 资源统一放 assets/，禁止散落到脚本目录
