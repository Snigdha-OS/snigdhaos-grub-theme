# Snigdha OS GRUB Theme 🎨

Welcome to the **Snigdha OS GRUB Theme** repository! 🚀 This theme is designed to provide a sleek, modern, and user-friendly bootloader experience for Snigdha OS and other Linux distributions. Based on elegance and minimalism, it aligns perfectly with Snigdha OS's philosophy of customization and performance. ✨



## Features 🌟

- **Modern Design**: A clean, professional look for your GRUB menu.
- **Customizable**: Easy to tweak colors, fonts, and backgrounds.
- **High-Resolution Support**: Optimized for 1080p and higher resolutions.
- **Lightweight**: Minimal impact on boot performance.



## Preview 🖼️

![Theme Preview](./assets/preview.png)

> *Note: Screenshot is representative. Actual appearance may vary depending on your screen resolution and GRUB version.*



## Installation Guide 🛠️

Follow these steps to install the Snigdha OS GRUB theme on your system:

### Prerequisites 📋

- A working GRUB installation.
- Administrative/root privileges.
- A Linux-based system.

### Steps 🚀

1. **Clone this repository:**
   ```bash
   git clone https://github.com/Snigdha-OS/snigdhaos-grub-theme.git
   cd snigdhaos-grub-theme
   ```

2. **Backup your current GRUB configuration:**
   ```bash
   sudo cp -r /boot/grub /boot/grub.bak
   ```

3. **Copy the theme files:**
   ```bash
   sudo mkdir -p /boot/grub/themes/snigdhaos
   sudo cp -r ./snigdhaos-theme/* /boot/grub/themes/snigdhaos/
   ```

4. **Update your GRUB configuration:**
   Edit `/etc/default/grub` to include the following line (or update it if it exists):
   ```bash
   GRUB_THEME="/boot/grub/themes/snigdhaos/theme.txt"
   ```

5. **Apply the changes:**
   ```bash
   sudo grub-mkconfig -o /boot/grub/grub.cfg
   ```

6. **Reboot and Enjoy! 🎉**
   ```bash
   sudo reboot
   ```



## Customization Options 🎨

You can customize the theme further by editing the `theme.txt` file inside the theme directory:

- **Background Image:** Replace the `background.png` file with your own image.
- **Colors:** Modify the `theme.txt` file to change text, highlight, and border colors.
- **Font:** Add your preferred font to the `fonts` folder and update the font path in `theme.txt`.



## Contributing 🤝

Contributions are welcome! If you have suggestions, bug fixes, or new feature ideas, feel free to:

1. Fork the repository.
2. Create a new branch.
3. Submit a pull request.

For major changes, please open an issue first to discuss your ideas. 🧠



## Troubleshooting 🛠️

### Common Issues:

1. **GRUB doesn't load the theme:**
   - Ensure the `GRUB_THEME` path in `/etc/default/grub` is correct.
   - Verify that `grub-mkconfig` was run successfully.

2. **Resolution problems:**
   - Set the correct resolution by adding `GRUB_GFXMODE=<your resolution>` in `/etc/default/grub`.
   - Update `GRUB_GFXPAYLOAD_LINUX=keep` for consistency.

3. **Missing fonts or assets:**
   - Ensure all files were copied correctly to the theme directory.

If you encounter further issues, feel free to open a GitHub issue. 💬



## License 📜

This project is licensed under the **MIT License**. See the [LICENSE](./LICENSE) file for details.



## Acknowledgements 🙌

- Inspired by modern GRUB themes.
- Thanks to the Snigdha OS community for their feedback and support. ❤️



## Stay Connected 🌐

- **Website:** [Snigdha OS Official](https://snigdhaos.org)
- **Forum:** [Snigdha OS Community](https://community.snigdhaos.org)
- **GitHub:** [Snigdha OS Projects](https://github.com/Snigdha-OS)



Enjoy your beautiful new GRUB theme! 🖤
