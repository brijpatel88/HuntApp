# 🕵️‍♀️ HUNT — Chamber of Commerce Scavenger Hunt App

## 🎯 Objective
**HuntApp** is a fun and interactive iOS scavenger hunt application designed for local Chambers of Commerce.  
It promotes local businesses by encouraging users to visit participating stores, restaurants, and theaters to find hidden items.

---

## 👟 How It Works
Users will:

- Receive **clues** for 10 hidden items located around local businesses.  
- **Take or select photos** when they find each item.  
- Track their progress automatically as they mark items as found.  
- Unlock **rewards** based on their progress:

  - 🏅 **5 items** → 10% off discount code  
  - 🏆 **7 items** → 20% off discount code  
  - 💰 **10 items** → 20% off + entry into $5000 draw  

---

## 🧩 Technologies Used
- **SwiftUI** – For building a declarative and responsive UI  
- **SwiftData** – For persistent data storage (item progress, photos, dates found)  
- **UIKit** – Used via `UIViewControllerRepresentable` for image picking  
- **MVVM Architecture** – Clean structure separating Models, Views, and ViewModels  
- **Xcode 15+** and **iOS 17 SDK**

---

## 📁 Project Structure
📁 Hunt/
│
├── 📄 README.md # Project documentation
│
├── 📂 Models/ # Data models and backend logic
│ ├── HuntItem.swift # Represents each scavenger hunt item
│ └── SubmissionService.swift # Handles reward submission and networking logic
│
├── 📂 ViewModels/ # App state management and business logic
│ └── HuntStore.swift # Central view model managing hunt progress and data
│
├── 📂 Views/ # SwiftUI interface files
│ ├── ContentView.swift # Main entry point and app layout
│ ├── ItemsListView.swift # Displays list of scavenger hunt items
│ ├── ItemDetailView.swift # Shows details and photo for each item
│ ├── ProgressSummaryView.swift # Displays overall hunt progress and rewards
│ └── SubmissionView.swift # Handles final submission or reward redemption
│
├── 📂 Utilities/ # Helper components and reusable utilities
│ ├── ImagePicker.swift # UIKit wrapper for photo library access
│ └── AssetImagePicker.swift # ✅ NEW: Custom picker for choosing images from app assets
│
└── 📂 Assets.xcassets/ # Contains all app icons and image assets

yaml
Copy code

---

## 🌟 Key Features

### 🔍 1. Clue-Based Gameplay
Each hunt item contains:
- **Business name**
- **Clue text**
- **Photo placeholder** for when it’s found

---

### 📸 2. Photo Capture or Selection
Users can:
- Use the **camera or photo library** via `ImagePicker`
- OR choose preloaded **asset images** using the custom `AssetImagePicker`

---

### 🖼️ 3. AssetImagePicker (Custom Feature)
A SwiftUI component that displays a scrollable list of images from `Assets.xcassets`.  
Users can tap any image to select it — great for demos or offline play.

**Example usage:**
```swift
AssetImagePicker(selectedImage: $selectedImage)
Features:

Displays images from your assets in a horizontal scroll view

Highlights the selected image

Passes the selected image to parent views using @Binding

🚀 Getting Started
Clone or Download the project:

bash
Copy code
git clone https://github.com/yourusername/HuntApp.git
cd HuntApp
Open in Xcode
Open HuntApp.xcodeproj (or .xcworkspace if present) using Xcode 15+.

Add Your Assets
Add image sets to Assets.xcassets using the same names defined in AssetImagePicker.

Run the App
Select a simulator or device, then press Cmd + R to run.

🧱 Future Improvements
Add leaderboards and social sharing

Integrate CloudKit for syncing progress

Implement location-based clues (using CoreLocation)

Add local notifications for new hunts or rewards

👨‍💻 Author
HuntApp Project
Developed for the Chamber of Commerce Scavenger Hunt Initiative

🪪 License
This project is for educational and promotional use.
Feel free to adapt it for your own local business events or learning projects.


