---
name: mobile-engineer
description: 移动端 APP 开发专家 (iOS/Android/Flutter/React Native)。在进行移动端开发、调试、UI 自动化测试时加载此 skill。触发场景：编写 Swift/Kotlin/Java/Dart 代码、操作模拟器/真机、构建 APK/IPA、运行 Maestro UI 测试、截图验证界面。
mcp:
  mobile-mcp:
    command: pnpm
    args: [ "dlx", "@mobilenext/mobile-mcp@latest" ]
  maestro:
    command: maestro
    args: [ "mcp" ]
---

# 移动端开发操作指南

## 核心原则

- **设备优先**: 代码必须在设备/模拟器上运行验证，不能仅凭编译通过就认为完成
- **测试驱动**: 使用 Maestro 流程验证 UI 交互，实现后立即测试
- **平台规范**: 严格遵循 Apple Human Interface Guidelines 和 Material Design 3

## 必须使用的工具

### 1. 设备管理 (mobile-mcp)

| 场景 | 工具 |
|------|------|
| 查看可用设备 | `mobile_list_available_devices` |
| 安装应用 | `mobile_install_app` |
| 启动应用 | `mobile_launch_app` |
| 截图验证 | `mobile_take_screenshot` |
| 获取屏幕元素 | `mobile_list_elements_on_screen` |
| 点击/滑动/输入 | `mobile_click_on_screen_at_coordinates` / `mobile_swipe_on_screen` / `mobile_type_keys` |

**工作流程**:

1. 首先调用 `mobile_list_available_devices` 确认设备状态
2. 使用 `mobile_install_app` 安装构建产物
3. 使用 `mobile_launch_app` 启动应用
4. 使用 `mobile_take_screenshot` 截图验证结果

### 2. UI 自动化测试 (Maestro)

| 场景 | 工具 |
|------|------|
| 查看可用设备 | `maestro_list_devices` |
| 启动设备 | `maestro_start_device` |
| 获取视图层级 | `maestro_inspect_view_hierarchy` |
| 运行测试流程 | `maestro_run_flow` |
| 运行测试文件 | `maestro_run_flow_files` |
| 查看语法参考 | `maestro_cheat_sheet` |

**文件结构规范**:

- 必须将测试文件保存在项目根目录的 `.maestro/` 文件夹中
- 使用 `.maestro/common/` 存放可复用的子流程（如登录）
- 使用 `.maestro/flows/` 存放具体测试用例

**编写最佳实践**:

1. **ID 优先**: 严禁依赖 UI 文本（易受多语言影响）。必须使用 `id` 定位元素（React Native `testID` / Flutter `Key` / iOS `accessibilityIdentifier`）。
2. **状态清理**: 在 Flow 头部设置 `launchApp: { clearState: true }` 确保环境纯净。
3. **模块化**: 使用 `runFlow` 复用登录等通用步骤，不要复制代码。
4. **智能等待**: 使用 `assertVisible` 等待元素加载，禁止使用硬编码的 `extendedWait`。

**工作流程**:

1. 使用 `maestro_inspect_view_hierarchy` 获取元素 ID
2. 使用 `maestro_cheat_sheet` 了解流程语法
3. 编写 YAML 流程并通过 `maestro_run_flow` 执行

### 3. 文档查阅 (Context7)

移动端 API 变化频繁，在使用 SwiftUI、Jetpack Compose、React Native 等框架前，**必须**通过 `context7_query-docs` 查阅最新文档。

## 平台特定指南

### Android

- 检查 `build.gradle` / `build.gradle.kts` 依赖配置
- 构建命令: `./gradlew assembleDebug` 或 `./gradlew assembleRelease`
- 产物路径: `app/build/outputs/apk/`
- 安装命令: `adb install -r app.apk`

### iOS

- 检查 `Podfile` 或 Swift Package Manager 配置
- 构建命令: `xcodebuild -scheme <Scheme> -sdk iphonesimulator`
- 模拟器安装: 使用 `mobile_install_app` 传入 `.app` 目录

### Flutter

- 检查 `pubspec.yaml` 依赖
- 构建命令: `flutter build apk` / `flutter build ios`
- 运行命令: `flutter run`

### React Native

- 检查 `package.json` 依赖
- Android: `npx react-native run-android`
- iOS: `npx react-native run-ios`

## 代码规范

编写 UI 代码时必须处理：

1. **安全区域 (Safe Area)**: 适配刘海屏、圆角屏
2. **深色模式 (Dark Mode)**: 提供 Light/Dark 两套配色
3. **加载状态 (Loading State)**: 异步操作需显示加载指示器
4. **错误处理 (Error Handling)**: 网络失败、权限拒绝等场景

## 调试指南

- 构建失败时，完整分析 Gradle/Xcodebuild 日志
- 不要猜测元素定位，使用 `mobile_list_elements_on_screen` 或 `maestro_inspect_view_hierarchy`
- 使用 `mobile_take_screenshot` 确认实际界面状态
