# Investor Hub

A modern fintech Flutter app for managing investor deals, where corporates post investment opportunities and investors can browse, filter, and express interest seamlessly.

---

# Overview

Investor Hub is a mini investor deal management platform built as part of a Flutter Developer Assignment.

The app enables:

* Corporates to showcase investment opportunities
* Investors to browse curated deals
* Advanced search and filtering
* Deal detail analysis with ROI projections
* Expressing and managing investment interests locally

The project emphasizes:

* Clean Architecture
* BLoC State Management
* Scalable feature-first modular design
* Premium fintech-style UI/UX
* Local persistence using Hive

---

# Core Features  

## Authentication (Mock)

* Email & password login
* Local session persistence using Hive
* Splash-based auth state handling
* Secure mock user flow

## Deal Listing Dashboard

* Browse investment opportunities
* Company name
* Industry tag
* Investment required (INR)
* Expected ROI (%)
* Risk level (Low / Medium / High)
* Deal status (Open / Closed)

## Search & Filter

* Search by company name or industry
* ROI range slider
* Risk level filtering
* Industry filtering
* Status filtering
* Persistent filter state

## Deal Details

* Company overview
* Financial highlights
* ROI projection graph
* Risk analysis
* Interest management CTA

## Express Interest

* Mark deals as interested
* Local persistence
* Remove interest support
* Duplicate prevention

## My Interests

* View saved deals
* Remove deals
* Empty states
* Swipe-to-remove UX

## Additional Features

* Theme toggle (Light/Dark mode)
* Fintech drawer navigation
* Profile section
* Smooth local state persistence

---

# Architecture

## Pattern Used:

# Clean Architecture + Feature-first Modular Structure

```bash
lib/
├── app/
│   ├── router/
│   └── theme/
│
├── core/
│   ├── di/
│   ├── routes/
│   ├── services/
│   └── storage/
│
├── features/
│   ├── auth/
│   │   ├── data/
│   │   ├── domain/
│   │   └── presentation/
│   │
│   ├── deals/
│   │   ├── data/
│   │   ├── domain/
│   │   └── presentation/
│   │
│   └── interests/
│       ├── data/
│       ├── domain/
│       └── presentation/
│
└── main.dart
```

---

# State Management

## BLoC / Cubit Used:

* AuthBloc
* DealsBloc
* InterestsBloc
* ThemeCubit

### State Handling Includes:

* Initial
* Loading
* Loaded
* Empty
* Error

---

# Tech Stack

## Core:

* Flutter
* Dart
* BLoC
* Freezed
* GoRouter
* Hive CE
* GetIt
* JSON Serializable
* FL Chart

## UI:

* Material 3
* Custom theme system
* Light/Dark mode
* Reusable widgets

---

# Design Decisions

## Why BLoC?

* Predictable state management
* Separation of business logic
* Scalable for production apps

## Why Clean Architecture?

* Maintainability
* Feature modularity
* Testability
* Clear data/domain/presentation boundaries

## Why Hive?

* Lightweight local persistence
* Fast offline storage
* Session management
* Interest storage

## Why GoRouter?

* Declarative routing
* Clean navigation flow
* Scalable route management

---

# UI/UX Highlights

* Premium Royal Indigo + Emerald fintech palette
* Modern cards
* ROI graphs
* Risk chips
* Drawer navigation
* Dark mode
* Responsive layouts
* Persistent filters
* Search optimization

---

# Mock Data

Deals are loaded from:

```bash
assets/mock/deals.json
```

### Includes:

* Multi-industry investment opportunities
* ROI data
* Risk data
* Financial metrics

---

# Local Storage

## Hive Boxes:

* auth_box
* settings_box
* interests_box

---

# Screenshots
<div align="center">
  <img src="https://github.com/user-attachments/assets/b108827c-4c5a-4e3e-82e4-f148ea358641" width="180" style="margin:10px"/>
  <img src="https://github.com/user-attachments/assets/fdba282e-6a0b-4afc-b487-30b4caeca231" width="180" style="margin:10px"/>
  <img src="https://github.com/user-attachments/assets/483768d7-a83e-4055-a9f1-acbd6a07f605" width="180" style="margin:10px"/>
  <br/>
  <img src="https://github.com/user-attachments/assets/3ebc49dd-9e59-4fee-9755-9e8e165fed79" width="180" style="margin:10px"/>
  <img src="https://github.com/user-attachments/assets/51d622de-d5d5-4215-92bb-4403c641c798" width="180" style="margin:10px"/>
  <img src="https://github.com/user-attachments/assets/d159d681-318c-458f-a0a6-bd59e831bb19" width="180" style="margin:10px"/>
</div>

---

# Setup Instructions

## Clone Repository

```bash
git clone https://github.com/TejasD36/investor_hub.git
cd investor_hub
```

## Install Dependencies

```bash
flutter pub get
```

## Generate Models

```bash
dart run build_runner build --delete-conflicting-outputs
```

## Run App

```bash
flutter run
```

---

# APK Build

```bash
flutter build apk --release
```

APK output:

```bash
build/app/outputs/flutter-apk/app-release.apk
```

---

# Future Enhancements

* Real backend integration
* Firebase/Auth API
* Live investment updates
* Push notifications
* Investor portfolio tracking
* Admin corporate portal
* Analytics dashboard
* Enhanced animations

---

# Assignment Deliverables Checklist

* [x] Mock Authentication
* [x] Deal Listing Screen
* [x] Search & Filter
* [x] Deal Details
* [x] Express Interest
* [x] My Interests
* [x] BLoC Architecture
* [x] Clean Architecture
* [x] Local Persistence
* [x] Modern UI
* [x] Screenshots

---

# Developer Notes

This project was designed with production-grade Flutter architecture principles while remaining assignment-focused. The implementation prioritizes:

* Code quality
* UI polish
* Maintainability
* Scalability
* Investor-grade fintech presentation

---

# Author

**Tejas Dudhal**
Mobile App Developer
---

# License

For assignment and educational purposes only.
