Great! Here's the updated and **pub.dev-ready** `README.md` file for your package **`ecom_login_flutter`** by **Gowtham D**:

---

```markdown
# 🔐 ecom_login_flutter

A plug-and-play Flutter package that combines an elegant login system with a bottom navigation–driven home screen.  
Perfect for e-commerce or any multi-tab applications.

---

## ✨ Features

- 🚪 Fully-functional Login, Signup, and Password Recovery screens
- 🏠 Modular HomeScreen with dynamic page switching
- 🧭 Custom Bottom Navigation Bar using labeled icons
- 🎨 Fully themeable and reusable architecture
- ⚡ Fast integration and production-ready

---

## 🚀 Getting Started

### Installation

Add to your `pubspec.yaml`:

```yaml
dependencies:
  ecom_login_flutter: ^1.0.0
```

Run:

```bash
flutter pub get
```

---

## 💻 Usage

### 🧑‍💻 Login Screen

```dart
LoginScreen(
  onLogin: (loginData) async {
    // Handle login logic here
    return null; // Return an error message string if failed
  },
  onSignup: (signupData) async {
    // Handle signup logic
    return null;
  },
  onRecoverPassword: (email) async {
    // Handle password recovery
    return null;
  },
)
```

Automatically navigates to the HomeScreen after successful login.

---

### 🏡 Home Screen

```dart
HomeScreen(
  appBarTitle: 'Welcome',
  screens: [
    HomePage(),
    ShopPage(),
    WishlistPage(),
    CartPage(),
    ProfilePage(),
  ],
  bottomNavigationItems: [
    BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
    BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Shop'),
    BottomNavigationBarItem(icon: Icon(Icons.favorite_border), label: 'Wishlist'),
    BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined), label: 'Cart'),
    BottomNavigationBarItem(icon: Icon(Icons.account_box), label: 'Profile'),
  ],
)
```

---

## 📦 Included Widgets

- `LoginScreen`
- `HomeScreen`
- `CustomBottomNavigation`
- `TabItem` model

---

## 🎨 Example: Theming the Login Screen

```dart
theme: LoginTheme(
  primaryColor: Colors.deepPurple,
  buttonTheme: LoginButtonTheme(
    backgroundColor: Colors.deepPurpleAccent,
  ),
),
```

---

## 📁 Folder Structure

```
lib/
├── ecom_login_flutter.dart
├── src/
│   ├── login_screen.dart
│   ├── home_screen.dart
│   ├── custom_navigation_bar.dart
│   └── models/tab_item_model.dart
```

---

## 📜 License

MIT © 2025 — Open source and free to use

---

## 👨‍💻 Author

**Gowtham D**  
📫 GitHub: [Gowtham D](https://github.com/gowtham-dd) 

---

```

Let me know if you'd like:
- An example project to publish under `example/`
- A `pubspec.yaml` starter for the package
- GitHub badges or links
