# 📦 app_core

`app_core` is a reusable Flutter package that provides the **core architecture**, **base classes**, and **shared utilities** used across the Avto Time mobile apps (`avto-time-client` and `avto-time-partners`). This package serves as a central place for maintaining consistent application behavior and reducing code duplication.

---

## ✨ Features

- 🔧 **Dio configuration** with interceptors and token refresh logic
- 💾 **Secure token storage** helpers
- 🧠 **Error handling** and network exception modeling
- 🎨 **Theme extensions** (colors, text styles)
- 🌐 **BuildContext extensions** for media, platform, providers, and themes
- 🧩 **Shared mixins, interfaces**, and base classes
- 🔄 **Retrofit integration** support
- 📍 Designed with clean architecture and testability in mind

---

## 🚀 Getting Started

### 1. Add to your app’s `pubspec.yaml`:

```yaml
dependencies:
  app_core:
    git:
      url: https://gitlab.com/avto_time_mobile/shared-packages/app_core.git
      ref: main  # or use a specific tag or branch

