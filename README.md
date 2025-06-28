# Cloud Brush Media

A professional photography and filmmaking portfolio website for Paul King, featuring a modern, responsive design with full-screen video background and elegant branding.

## 🎯 Overview

Cloud Brush Media showcases Paul King's diverse creative services including photography, filmmaking, cinematography, editing, drone piloting, and 360° camera work. The site emphasizes the brand tagline "Perspective Changes Everything" with a stunning visual presentation.

## ✨ Features

- **Responsive Design**: Optimized for all devices with mobile-first approach
- **Video Background**: Full-screen video background with multiple format support (WebM, MP4)
- **Performance Optimized**: Separate video files for desktop and mobile devices
- **Custom Branding**: Hand-crafted SVG logo with professional typography
- **Modern Stack**: Built with vanilla HTML5 and Tailwind CSS v4
- **Professional Credentials**: Highlights NPPA and ASMP memberships

## 🏗️ Project Structure

```text
cbm/
├── README.md
├── public/
│   ├── index.html              # Main website
│   ├── convert-for-web.sh      # Video optimization utility
│   └── resources/
│       ├── logo-cbm.svg        # Brand logo
│       ├── video-clouds.webm   # WebM video (VP9)
│       ├── video-clouds-desktop.mp4  # Desktop MP4 (1080p)
│       ├── video-clouds-mobile.mp4   # Mobile MP4 (720p)
│       └── video-clouds-poster-1280x720.jpeg  # Video poster
```

## 🚀 Getting Started

### Prerequisites

- Modern web browser with video support
- Local web server (for development)

### Local Development

1. Clone the repository:

   ```bash
   git clone https://github.com/progroup/cbm.git
   cd cbm
   ```

2. Serve the site locally:

   ```bash
   # Using Python
   python -m http.server 8000
   
   # Using Node.js
   npx serve public
   
   # Using PHP
   php -S localhost:8000 -t public
   ```

3. Open your browser to `http://localhost:8000`

## 🎬 Video Optimization

The project includes a utility script for optimizing video content for web delivery:

### Usage

```bash
cd public
chmod +x convert-for-web.sh
./convert-for-web.sh path/to/your-video.mp4
```

### What it does

- **Mobile MP4**: Creates a 720p version optimized for mobile devices (~2Mbps)
- **Desktop MP4**: Creates a 1080p version for desktop viewing (~5Mbps)
- **WebM**: Creates a VP9-encoded WebM file for modern browsers (~2-3Mbps)
- **HTML Output**: Provides ready-to-use HTML video element code

### Requirements

- [HandBrakeCLI](https://handbrake.fr/downloads2.php) for MP4 encoding
- [FFmpeg](https://ffmpeg.org/download.html) for WebM conversion

## 🎨 Design Philosophy

- **Minimalist Elegance**: Clean, uncluttered design that highlights the work
- **Cinematic Feel**: Full-screen video creates immersive brand experience
- **Professional Credibility**: Subtle display of credentials and expertise
- **Brand Consistency**: Custom typography and color palette

## 🛠️ Technology Stack

- **HTML5**: Semantic markup with accessibility in mind
- **Tailwind CSS v4**: Utility-first CSS framework via CDN
- **Responsive Images/Video**: Multiple formats and sizes for optimization
- **Modern Video Standards**: WebM (VP9) and MP4 (H.264) support

## 📱 Browser Support

- Chrome/Chromium (recommended)
- Firefox
- Safari
- Edge
- Mobile browsers (iOS Safari, Chrome Mobile)

## 🤝 Contributing

This is a pro-bono project for a close friend. Contributions should focus on:

- Performance optimizations
- Accessibility improvements
- Cross-browser compatibility
- SEO enhancements

## 📄 License

This project is proprietary and created specifically for Cloud Brush Media / Paul King.

## 📞 Contact

### Paul King - Cloud Brush Media

- Photographer, Filmmaker, Cinematographer, Editor
- Part 107 Drone Pilot
- 360° Camera Specialist
- NPPA & ASMP Member

---

*"Perspective Changes Everything"* - Cloud Brush Media
