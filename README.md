# 📰 Modern News App

Aplikasi berita modern yang dibangun dengan Flutter, menampilkan berita terkini dari berbagai kategori dengan desain yang elegan dan user experience yang optimal.

## ✨ Fitur Utama

- **🔥 Berita Terkini**: Dapatkan berita terbaru dari berbagai sumber terpercaya
- **📱 Desain Modern**: Interface yang clean dan responsif dengan Material Design 3
- **🎯 Kategori Berita**: Jelajahi berita berdasarkan kategori (Technology, Sports, Business, dll.)
- **🔍 Pencarian Cerdas**: Cari berita berdasarkan kata kunci atau topik tertentu
- **📖 Detail Artikel**: Baca artikel lengkap dengan layout yang nyaman
- **🚀 Performa Tinggi**: Loading cepat dengan caching gambar dan optimasi UI
- **🎨 Gradient UI**: Desain visual yang menarik dengan gradient dan animasi halus
- **📤 Berbagi Artikel**: Bagikan artikel menarik ke platform lain

## 🛠️ Teknologi yang Digunakan

### Framework & Language
- **Flutter** - Cross-platform mobile development
- **Dart** - Programming language

### State Management & Architecture
- **GetX** - State management, routing, dan dependency injection
- **MVC Pattern** - Arsitektur yang terstruktur dan maintainable

### Networking & Data
- **HTTP** - REST API communication
- **News API** - Sumber data berita terpercaya
- **Cached Network Image** - Optimasi loading dan caching gambar

### UI/UX Libraries
- **Material Design 3** - Modern design system
- **Custom Gradient Components** - Visual enhancement
- **Shimmer Loading** - Skeleton loading states
- **Timeago** - Human-readable timestamps

### Utilities
- **Flutter DotEnv** - Environment variables management
- **URL Launcher** - External link handling
- **Share Plus** - Native sharing functionality

## 📱 Screenshots

*[Tambahkan screenshots aplikasi Anda di sini]*

## 🚀 Instalasi & Setup

### Prerequisites
- Flutter SDK (>=3.8.1)
- Dart SDK
- Android Studio / VS Code
- Android/iOS device atau emulator

### Langkah Instalasi

1. **Clone repository**
   ```bash
   git clone https://github.com/[username]/news_app.git
   cd news_app
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Setup API Key**
   - Daftar di [NewsAPI.org](https://newsapi.org/) untuk mendapatkan API key
   - Buat file `.env` di folder `assets/`
   - Tambahkan API key Anda:
     ```
     API_KEY=your_api_key_here
     ```

4. **Run aplikasi**
   ```bash
   flutter run
   ```

## 📁 Struktur Project

```
lib/
├── bindings/          # Dependency injection setup
│   ├── app_binding.dart
│   └── home_binding.dart
├── controllers/       # Business logic & state management
│   └── news_controller.dart
├── models/           # Data models
│   ├── news_article.dart
│   └── news_response.dart
├── routes/           # Navigation & routing
│   ├── app_pages.dart
│   └── app_routes.dart
├── services/         # API services & data layer
│   └── news_service.dart
├── utils/            # Utilities & constants
│   ├── app_colors.dart
│   └── constants.dart
├── views/            # UI screens
│   ├── home_view.dart
│   ├── news_detail_view.dart
│   └── splash_view.dart
├── widgets/          # Reusable UI components
│   ├── category_chip.dart
│   ├── loading_shimmer.dart
│   └── news_card.dart
└── main.dart         # App entry point
```

## 🎨 Design System

### Color Palette
- **Primary**: Modern gradient colors untuk branding
- **Surface**: Clean background dengan subtle gradients  
- **Text**: High contrast untuk readability optimal
- **Accent**: Highlight colors untuk interactive elements

### Typography
- **SF Pro Display** - Primary font family
- **Weight variations**: 400, 500, 700, 800, 900
- **Responsive sizing** untuk berbagai screen sizes

### Components
- **Custom Cards** dengan gradient backgrounds
- **Animated Buttons** dengan shadow effects
- **Shimmer Loading** untuk better UX
- **Category Chips** dengan selection states

## 🔧 Konfigurasi

### Environment Variables
```env
API_KEY=your_newsapi_key
```

### Supported Categories
- General
- Technology  
- Sports
- Business
- Entertainment
- Health
- Science

## 📊 Performa & Optimasi

- **Image Caching**: Menggunakan `cached_network_image` untuk optimasi loading
- **Lazy Loading**: List view dengan efficient scrolling
- **State Management**: GetX untuk reactive programming
- **Memory Management**: Proper disposal dan cleanup
- **Network Optimization**: HTTP client dengan timeout handling

## 🤝 Kontribusi

Kontribusi sangat diterima! Silakan:

1. Fork repository ini
2. Buat feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit changes (`git commit -m 'Add some AmazingFeature'`)
4. Push ke branch (`git push origin feature/AmazingFeature`)
5. Buka Pull Request

## 📝 Roadmap

- [ ] **Dark Mode Support** - Theme switching
- [ ] **Offline Reading** - Cache articles untuk offline access
- [ ] **Push Notifications** - Breaking news alerts
- [ ] **Bookmarks** - Save articles untuk dibaca nanti
- [ ] **User Preferences** - Customizable news sources
- [ ] **Social Features** - Comment dan rating system
- [ ] **Multi-language** - Internationalization support

## 🐛 Known Issues

- Beberapa deprecation warnings untuk `withOpacity` (akan diperbaiki di update selanjutnya)
- Background color deprecation di Material Design 3

## 📄 License

Distributed under the MIT License. See `LICENSE` for more information.

## 👨‍💻 Developer

**[Your Name]**
- GitHub: [@yourusername](https://github.com/yourusername)
- Email: your.email@example.com
- LinkedIn: [Your LinkedIn](https://linkedin.com/in/yourprofile)

## 🙏 Acknowledgments

- [NewsAPI](https://newsapi.org/) untuk data berita
- [Flutter Team](https://flutter.dev/) untuk framework yang luar biasa
- [GetX Community](https://github.com/jonataslaw/getx) untuk state management solution
- Material Design team untuk design guidelines

---

⭐ **Jika project ini membantu Anda, jangan lupa berikan star!** ⭐