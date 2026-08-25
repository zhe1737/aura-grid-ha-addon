# Aura Grid Home Assistant Add-on

[中文](README.md)

This is an unofficial **Aura Grid LITE Add-on Repository** for **Home Assistant OS / Home Assistant Supervised**.

The goal of this project is to make Aura Grid LITE easier to install and manage inside Home Assistant. Instead of manually creating Docker containers, configuring Redis, preparing persistent storage, and managing startup commands, users can install and manage Aura Grid directly from the Home Assistant Add-on Store.

> **Important:** This is not an official Aura Grid Home Assistant Add-on.  
> This repository only provides the Home Assistant Add-on wrapper and deployment logic. Aura Grid itself is still provided by the official container image:
>
> `ghcr.io/24kbrother/aura-grid:latest`

---

## Features

- Install directly from the Home Assistant Add-on Store
- Managed by Home Assistant Supervisor
- Start, stop, and restart directly from Home Assistant
- Supports automatic startup on boot
- Redis is included, so no separate Redis Add-on is required
- Automatically creates the directories required by Aura Grid
- Automatically initializes / updates the Prisma database
- Persistent storage for Aura Grid data
- Default external Web UI port is `8125`
- Uses the official Aura Grid GHCR image

---

## Supported Architecture

Currently, this Add-on supports **amd64 / x86-64 only**.

Examples of supported systems:

- Intel N100 / N95 / N150 mini PCs
- Intel Core i3 / i5 / i7 systems
- AMD Ryzen x86-64 systems
- Standard x86-64 PCs running Home Assistant OS
- x86-64 virtual machines

Currently unsupported:

- Raspberry Pi 4 / 5
- T95 Max and similar ARM TV boxes
- Other `aarch64 / arm64` Home Assistant systems

The reason is that the current official Aura Grid Docker image is:

```text
ghcr.io/24kbrother/aura-grid:latest
Architecture: amd64

# Aura Grid Home Assistant Add-on

[English](README_EN.md)

這是一個提供給 **Home Assistant OS / Home Assistant Supervised** 使用的非官方 Aura Grid LITE Add-on Repository。

此專案的目標，是讓原本需要手動執行 Docker、設定 Redis、處理資料目錄與啟動流程的 Aura Grid LITE，可以直接透過 Home Assistant 的 Add-on Store 安裝、啟動與管理。

> **重要：** 這不是 Aura Grid 官方 Home Assistant Add-on。  
> 本 Repository 只負責 Home Assistant Add-on 的包裝與部署流程，Aura Grid 本體仍來自官方容器映像：
>
> `ghcr.io/24kbrother/aura-grid:latest`

---

## 功能

- 直接從 Home Assistant Add-on Store 安裝
- 由 Home Assistant Supervisor 管理啟動、停止與重新啟動
- 支援開機自動啟動
- 內建 Redis，不需要另外安裝 Redis Add-on
- 自動建立 Aura Grid 所需資料目錄
- 自動執行 Prisma 資料庫初始化 / 更新
- Aura Grid 資料持久化保存
- 預設 Web UI 對外連接埠為 `8125`
- 使用 Aura Grid 官方 GHCR Image

---

## 支援架構

目前此 Add-on **只支援 amd64 / x86-64**。

支援範例：

- Intel N100 / N95 / N150 小主機
- Intel Core i3 / i5 / i7 小主機
- AMD Ryzen x86-64 主機
- 一般 x86-64 PC 安裝 Home Assistant OS
- x86-64 虛擬機環境

目前不支援：

- Raspberry Pi 4 / 5
- T95 Max 等 ARM TV Box
- 其他 `aarch64 / arm64` Home Assistant 主機

原因是 Aura Grid 官方目前的 Docker Image 為：

```text
ghcr.io/24kbrother/aura-grid:latest
Architecture: amd64

